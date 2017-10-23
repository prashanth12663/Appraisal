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
import com.sonata.appraisal.service.LoginService;
import com.sonata.appraisal.service.LoginServiceImpl; 

@Controller
@RequestMapping(value = "/login")
public class LoginController {
	static final Logger logger = Logger.getLogger(LoginController.class);
	@Autowired
	private LoginService loginServiceImpl;
	/**
	 * This method handles initial form request from client/page which shows the default application home page
	 * @param Model Form Data in binded to Model object
	 * @return String This returns view name.
	 */
	@RequestMapping(value = "login",method = RequestMethod.GET)
	public String getCreateForm(Model model,@ModelAttribute("loginModel") Login login) {
     logger.info("Display the Application login form");
		model.addAttribute("loginModel", new Login());
		return "loginForm";
	}
	
	
/**
 * 
 * @param result error registration capabilities, allowing for a Validator to be applied, and adds binding-specific analysis and model building.
 * @param Model Form Data in binded to Model object
 * @return String This returns view name.
 * @throws IOException 
 */
	@RequestMapping(method = RequestMethod.POST)

	public String create(HttpServletRequest request,@ModelAttribute("loginModel") Login login, BindingResult result,Model model) throws IOException {
		if (result.hasErrors()) {
			return "loginForm";
		}
		request.setAttribute("User",login.getEmpName());
		String role=loginServiceImpl.authenticateLogin(login);

		if(role.equals("MANAGER")){
		loginServiceImpl.getEmployeeDetails(login);
		model.addAttribute("Login", login);	
		return "manager"; 
		}
		else if(role.equals("HR")){
			model.addAttribute("Login", login);	
			return "humanresource";
		}
		else{
			return "loginForm";
		}
		
	}

}
