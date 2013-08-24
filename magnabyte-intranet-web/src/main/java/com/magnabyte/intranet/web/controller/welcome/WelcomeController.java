package com.magnabyte.intranet.web.controller.welcome;

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
public class WelcomeController {
	private static final Logger logger = LoggerFactory.getLogger(WelcomeController.class);
	
	@RequestMapping("/welcome")
	public void welcome(ModelMap model) {
		logger.debug("Welcome!!!!!");
	}
}
