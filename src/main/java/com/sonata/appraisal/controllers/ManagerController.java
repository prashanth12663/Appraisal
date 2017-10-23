/**
 * This Controller is the entry point to the application that
 * simply displays Login Page to the standard output.
 *
 * @author  Girish Gurajala
 * @version 1.0
 * @since   2016-05-26 
 */
package com.sonata.appraisal.controllers;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;  
import org.springframework.validation.BindingResult;   
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sonata.appraisal.model.Login;
import com.sonata.appraisal.model.Manager;
import com.sonata.appraisal.service.LoginService;
import com.sonata.appraisal.service.ManagerService; 

@Controller
@RequestMapping(value = "/login")
public class ManagerController {
	static final Logger logger = Logger.getLogger(LoginController.class);
	@Autowired
	private ManagerService managerServiceImpl;
	
	public String getAppDetail(HttpServletRequest request,@ModelAttribute("managerModel") Manager manager, BindingResult result,Model model) throws IOException {
		managerServiceImpl.personalInfo(manager);
		
		return "manager";
	}
}
