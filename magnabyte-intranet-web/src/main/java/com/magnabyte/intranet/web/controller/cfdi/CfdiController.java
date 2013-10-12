package com.magnabyte.intranet.web.controller.cfdi;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.magnabyte.intranet.model.FileUploadForm;

@Controller
@RequestMapping("/cfdi")
public class CfdiController {
	private static final Logger logger = LoggerFactory.getLogger(CfdiController.class);
	
	@RequestMapping("/validadorSello")
	public String validadorSello(ModelMap model) {
		logger.info("En validadorSello");
		return "cfdi/validadorSello";
	}
	
	@RequestMapping(value = "/validar", method = RequestMethod.POST)
	public String validar(@ModelAttribute("uploadForm") FileUploadForm uploadForm, ModelMap model) {
		logger.info("validando...");
		
		List<MultipartFile> files = uploadForm.getFiles();
		
		for (MultipartFile file : files) {
			System.out.println(file.getOriginalFilename());
		}
		return "cfdi/validadorSello";
	}
}
