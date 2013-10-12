package com.magnabyte.intranet.web.controller.cfdi;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cfdi")
public class CfdiController {
	private static final Logger logger = LoggerFactory.getLogger(CfdiController.class);
	
	@RequestMapping("/validadorSello")
	public String validadorSello(ModelMap model) {
		logger.info("En validadorSello");
		
		return "cfdi/validadorSello";
	}
	
	@RequestMapping("/validar")
	public String validar(ModelMap model) {
		logger.info("validando...");
		return "cfdi/validadorSello";
	}
}
