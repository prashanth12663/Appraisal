
package com.sonata.appraisal.service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;

import com.sonata.appraisal.model.Login;
import com.sonata.appraisal.model.Manager;

public class ManagerServiceImpl implements ManagerService{

	@Override
	public String personalInfo(Manager manager) throws IOException {
		
		ResultSet rs=null;
		Connection con = null;
		Statement stmt = null;

		Properties prop = new Properties();
		prop.load(this.getClass().getClassLoader().getResourceAsStream("config.properties"));
		final String DB_URL = prop.getProperty("DB_URL") ;
		final String DATABASE = prop.getProperty("database") ;
		final String USER = prop.getProperty("db_user");
		final String PASSWORD = prop.getProperty("password");
		
		return null;
	}
	
	
	
	     
} 
