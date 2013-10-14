package com.magnabyte.intranet.service.impl;

import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Signature;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;

import org.apache.commons.ssl.PKCS8Key;
import org.bouncycastle.util.encoders.Base64;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.magnabyte.intranet.model.SelloDigital;
import com.magnabyte.intranet.service.CfdiService;

@Service
public class CfdiServiceImpl implements CfdiService {

	private static final Logger logger = LoggerFactory.getLogger(CfdiServiceImpl.class);
	private static final String CADENA = "texto"; 
	
	
	@Override
	public boolean validarSelloDigital(SelloDigital selloDigital) {
		String selloProcesado;
		boolean selloValido = false;
		try {
			PKCS8Key key = new PKCS8Key(selloDigital.getKeyFile().getInputStream(), selloDigital.getPassword().toCharArray());
			PrivateKey privateKey = key.getPrivateKey();
			
			Signature signature = Signature.getInstance("SHA1withRSA");
			signature.initSign(privateKey);
			signature.update(CADENA.getBytes("UTF-8"));
			byte[] firma = signature.sign();
			
			selloProcesado = new String(Base64.encode(firma));
			
			logger.info("Sello Digital: " + selloProcesado);
			
			CertificateFactory cf = CertificateFactory.getInstance("X.509");
			X509Certificate cert = (X509Certificate) cf.generateCertificate(selloDigital.getCerFile().getInputStream());
			cert.checkValidity();
			PublicKey publicKey = cert.getPublicKey();
			signature.initVerify(publicKey);
			signature.update(CADENA.getBytes("UTF-8"));
			selloValido = signature.verify(Base64.decode(selloProcesado));
		} catch (GeneralSecurityException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return selloValido;
	}

}
