package com.magnabyte.intranet.service.impl;

import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateFactory;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.X509Certificate;

import org.apache.commons.ssl.PKCS8Key;
import org.bouncycastle.util.encoders.Base64;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.magnabyte.intranet.model.SelloDigital;
import com.magnabyte.intranet.service.CfdiService;

@Service
public class CfdiServiceImpl implements CfdiService {

	private static final Logger logger = LoggerFactory.getLogger(CfdiServiceImpl.class);
	private static final String CADENA = "hola"; 
	
	
	@Override
	public boolean validarSelloDigital(SelloDigital selloDigital) {
		String selloProcesado;
		boolean selloValido = false;
		String message = "El certificado y la llave son validos.";
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
			signature = Signature.getInstance("SHA1withRSA");
			signature.initVerify(publicKey );
			signature.update(CADENA.getBytes("UTF-8"));
			selloValido = signature.verify(Base64.decode(selloProcesado));
			if (!selloValido) {
				message = "El certificado para el sello digital es invalido. Favor de verificar";
			}
		} catch (IOException e) {
			message = "Error al cargar alguno de los archivos, favor de verificar.";
			logger.error("Error al cargar alguno de los archivos, favor de verificar.");
		} catch (NoSuchAlgorithmException e) {
			message = "Ocurrio un error, favor de reportar a sistemas.";
			logger.error("Ocurrio un error el algoritmo no es soportado");
		} catch (InvalidKeyException e) {
			message = "La llave es invalida, favor de verificar.";
			logger.error("La llave es invalida, favor de verificar");
		} catch (SignatureException e) {
			message = "Ocurrio un error, favor de reportar a sistemas.";
			logger.error("Ocurrio un error al generar o verificar la firma.");
		} catch (CertificateExpiredException e) {
			message = "La vigencia del certificada es invalido, favor de verificar.";
			logger.error("La vigencia del certificada es invalido, favor de verificar.");
		} catch (CertificateNotYetValidException e) {
			message = "La vigencia del certificada es invalido, favor de verificar.";
			logger.error("La vigencia del certificada es invalido, favor de verificar.");
		} catch (GeneralSecurityException e) {
			message = "Error al validar la llave con la contraseña proporcionada. Favor de verificar.";
			logger.error("Error al validar la llave con la contraseña proporcionada. Favor de verificar.");
		}
		selloDigital.setMensajeValidacion(message);
		return selloValido;
	}

}
