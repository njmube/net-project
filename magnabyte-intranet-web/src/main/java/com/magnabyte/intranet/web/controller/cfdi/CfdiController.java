package com.magnabyte.intranet.web.controller.cfdi;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.magnabyte.intranet.model.SelloDigital;
import com.magnabyte.intranet.service.CfdiService;

@Controller
@RequestMapping("/cfdi")
public class CfdiController {
	private static final Logger logger = LoggerFactory.getLogger(CfdiController.class);
	
	@Autowired
	private CfdiService cfdiService;
	
	@RequestMapping("/validadorSello")
	public String validadorSello(ModelMap model) {
		logger.info("En validadorSello");
		return "cfdi/validadorSello";
	}
	
	@RequestMapping(value="/validar", method=RequestMethod.POST)
	public String validar(@ModelAttribute("selloDigital") SelloDigital selloDigital, ModelMap model) {
		logger.info("validando...");
		boolean selloValido = cfdiService.validarSelloDigital(selloDigital);
		
		if (selloValido) {
			model.put("typealert", "success");
		} else {
			model.put("typealert", "danger");
		}
		model.put("message", selloDigital.getMensajeValidacion());

		return "cfdi/validadorSello";
	}
	
	@RequestMapping("/facturacion")
	public String facturacion(ModelMap model) {
		logger.info("prototipo facturacion...");
		return "cfdi/facturacion";
	}
	
	@RequestMapping("/datosCliente")
	public String datosCliente(ModelMap model) {
		logger.info("datos del cliente...");
		return "cfdi/datosCliente";
	}
}
