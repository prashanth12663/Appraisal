/**
*
* @author  Girish Gurajala
* @version 1.0
* @since   2016-05-26 
*/
package com.sonata.appraisal.service;

import java.io.IOException;

import com.sonata.appraisal.model.Login;

public interface LoginService {
	
	/**
	 * This abstract method authenticates the user to application,The implementation class is LoginServiceImpl
	 * @param login Model Attribute
	 * @throws IOException 
	 */
	public String authenticateLogin(Login login) throws IOException;
	
	public void getEmployeeDetails(Login login) throws IOException;

}
