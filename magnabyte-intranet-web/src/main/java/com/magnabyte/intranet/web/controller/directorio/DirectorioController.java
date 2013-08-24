package com.magnabyte.intranet.web.controller.directorio;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author omkbron
 *
 */
@Controller
@RequestMapping("/directorio")
public class DirectorioController {
	private static final Logger logger = LoggerFactory.getLogger(DirectorioController.class);
	
	@RequestMapping("/showDirectorio")
	public String showDirectorio(ModelMap model) {
		logger.info("Mostrando el directorio");
		return "directorio/showDirectorio";
	}
}
