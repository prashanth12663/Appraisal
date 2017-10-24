
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
import java.util.ArrayList;
import java.util.Calendar;
import org.apache.log4j.Logger;


import com.sonata.appraisal.model.Login;

public class LoginServiceImpl implements LoginService{
	
	
	static final Logger logger = Logger.getLogger(LoginServiceImpl.class);
	DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
	Calendar cal = Calendar.getInstance();
	
	
	/**
	 * This method authenticates the user to the application
	 * @throws IOException 
	 */
	
	public String authenticateLogin(Login login) throws IOException{
		ResultSet rs=null;
		Connection con = null;
		Statement stmt = null;
		String username=login.getEmpName();
		String password=login.getPassword();

		Properties prop = new Properties();
		prop.load(this.getClass().getClassLoader().getResourceAsStream("config.properties"));
		final String DB_URL = prop.getProperty("DB_URL") ;
		final String DATABASE = prop.getProperty("database") ;
		final String USER = prop.getProperty("db_user");
		final String PASSWORD = prop.getProperty("password");

		try {
			Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL + DATABASE,USER,PASSWORD);
			stmt = con.createStatement();
			String sql;
			logger.info("connection established to"+ " "+DB_URL);
			sql="select username,password,role from user where username=\""+username+"\" AND password= \""+password+"\"";
			rs = stmt.executeQuery(sql);
			logger.info("excecuting"+ " "+sql);

			if(rs.next()!=false){
				login.setRole(rs.getString("role"));
				logger.info(login.getEmpName()+" "+"Successfuly logged in to application ");
				return login.getRole();
			}
			else{
				login.setErrorMessage("Invalid credentials");
			}
		}
		catch (SQLException se) {
			se.printStackTrace();
			logger.error("connection failure in mySQLconnection");
			login.setErrorMessage("SQL Exception");

		} catch (Exception e) {
			e.printStackTrace();
			logger.error("connection failure in mySQLconnection");
			login.setErrorMessage("Connection failed please try again later");

		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
			} catch (SQLException se1) {}
			try {
				if (stmt!=null) {
					stmt.close();
				}
			} catch (SQLException se2) {
			}
			try {
				if (con!=null) {
					con.close();
				}else {
					login.setErrorMessage("Server Is Down");

				}
			} catch (SQLException se3) {
				se3.printStackTrace();
			} 
		}
		return "Failure";
	}
	
	public void getEmployeeDetails(Login login) throws IOException {

		ResultSet rs=null;
		Connection con = null;
		Statement stmt = null;
		Properties prop = new Properties();
		prop.load(this.getClass().getClassLoader().getResourceAsStream("config.properties"));
		final String DB_URL = prop.getProperty("DB_URL") ;
		final String DATABASE = prop.getProperty("database") ;
		final String USER = prop.getProperty("db_user");
		final String PASSWORD = prop.getProperty("password");
		
		ArrayList<Login> employeeDetails=new ArrayList<Login>(); 
		
		String query="SELECT empid,empname,DOJ,HCC,Proj,PM,Grade,CTC,TypeAndYrsCompl,CBFRole,RoleCluster,CBFLevel,PerfCatg,Min,Max,Kitty,CurrentCTC,BenchmarkSalary,PercIncrReqdToGetToBenchmark,IncrRange,SubRange,WtdPercentIncr,WtdIncr,NewCTC,MaxGrade FROM etg_app.ap_emp_detail;";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(DB_URL + DATABASE,USER,PASSWORD);
			stmt = con.createStatement();
			rs = stmt.executeQuery(query);
			while(rs.next()) {
				Login emp = new Login();
				emp.setEmpId(rs.getInt(1));
				emp.setEmpName(rs.getString(2));
				emp.setDoj(rs.getString(3));
				emp.setHcc(rs.getString(4));
				emp.setProjectname(rs.getString(5));
				emp.setPm(rs.getString(6));
				emp.setCurrentGrade(rs.getString(7));
				emp.setCurrentctc(rs.getDouble(8));
				emp.setTypeandyearofcomp(rs.getString(9));
				emp.setCbfrole(rs.getString(10));
				emp.setRolecluster(rs.getInt(11));
				emp.setCbflevel(rs.getInt(12));
				emp.setPerfcatg(rs.getInt(13));
				emp.setMin(rs.getInt(14));
				emp.setMax(rs.getInt(15));
				emp.setKitty(rs.getDouble(16));
				emp.setBenchmarksalary(rs.getDouble(17));
				emp.setPercincrreqdtoGettobenchmark(rs.getDouble(18));
				emp.setIncrrange(rs.getString(19));
				emp.setSubrange(rs.getString(20));
				emp.setWtdpercentincr(rs.getString(21));
				emp.setWtdincr(rs.getDouble(22));
				emp.setNewCTC(rs.getDouble(23));
				emp.setMaxGrade(rs.getString(24));	
				employeeDetails.add(emp);
			}	
				
		} catch (SQLException se) {
			se.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
			} catch (SQLException se1) {}
			try {
				if (stmt!=null) {
					stmt.close();
				}
			} catch (SQLException se2) {
			}
			try {
				if (con!=null) {
					con.close();
				}else {
					login.setErrorMessage("Oops!! Something went wrong, Please Try again later..");
				}
			} catch (SQLException se3) {
				se3.printStackTrace();
			} 
		} 
		login.setEmployeeDetailsList(employeeDetails);
	}
	     
} 
