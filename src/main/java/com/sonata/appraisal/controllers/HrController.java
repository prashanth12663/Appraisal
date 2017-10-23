/**
 * This Controller is the entry point to the application that
 * simply displays Login Page to the standard output.
 *
 * @author  Girish Gurajala
 * @version 1.0
 * @since   2016-05-26 
 */
package com.sonata.appraisal.controllers;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;

import javax.servlet.http.HttpSession;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sonata.appraisal.model.HumanResource;
import com.sonata.appraisal.model.Login;
import com.sonata.appraisal.service.LoginServiceImpl;



@Controller
public class HrController {

		private static String UPLOADED_FOLDER = "C://hackata//";



		/**
		 * Upload single file using Spring Controller
		 * @throws IOException 
		 */
		@SuppressWarnings("deprecation")
		@RequestMapping(value="/savefile",method=RequestMethod.POST)  
		public String upload(@RequestParam CommonsMultipartFile file,HttpSession session,@RequestParam("etgOne") double etgOne,@RequestParam("etgTwo") double etgTwo,@RequestParam("etgThree") double etgThree,@RequestParam("etgFour") double etgFour,@RequestParam("etgFive") double etgFive) throws IOException
		{  
		        //String path=session.getServletContext().getRealPath("/");  
		        String filename=file.getOriginalFilename(); 
		        ResultSet rs=null;
				Connection con = null;
				Statement stmt = null;

				Properties prop = new Properties();
				prop.load(this.getClass().getClassLoader().getResourceAsStream("config.properties"));
				final String DB_URL = prop.getProperty("DB_URL") ;
				final String DATABASE = prop.getProperty("database") ;
				final String USER = prop.getProperty("db_user");
				final String PASSWORD = prop.getProperty("password");
		          
		        System.out.println(UPLOADED_FOLDER+" "+filename);  
		        try{  
		        byte barr[]=file.getBytes();  
		          
		        BufferedOutputStream bout=new BufferedOutputStream(  
		                 new FileOutputStream(UPLOADED_FOLDER+"/"+filename));  
		        bout.write(barr);  
		        bout.flush();  
		        bout.close();
					Class.forName("com.mysql.jdbc.Driver");
		            con = DriverManager.getConnection(DB_URL + DATABASE,USER,PASSWORD);
					stmt = con.createStatement();
					String sql;
					sql="insert into etg_app.etg_kitty values (1,"+etgOne+"),(2,"+etgTwo+"),(3,"+etgThree+"),(4,"+etgFour+");";
					stmt.executeUpdate(sql);
					
					
					String excelFilePath = UPLOADED_FOLDER+"/"+filename;
					try {

			            FileInputStream excelFile = new FileInputStream(new File(excelFilePath));
			            @SuppressWarnings("resource")
						Workbook workbook = new XSSFWorkbook(excelFile);
			            Sheet datatypeSheet = workbook.getSheetAt(0);
			            Iterator<Row> iterator = datatypeSheet.iterator();
			            List data = new ArrayList();
			            while (iterator.hasNext()) {

			                Row currentRow = iterator.next();
			                Iterator<Cell> cellIterator = currentRow.iterator();
			                String yearofcomp = null;
			                double empid=0;
			                int temp;
			                while (cellIterator.hasNext()) {

			                    Cell currentCell = cellIterator.next();
			                    //getCellTypeEnum shown as deprecated for version 3.15
			                    //getCellTypeEnum ill be renamed to getCellType starting from version 4.0
			                    if (currentCell.getCellTypeEnum() == CellType.STRING) {
			                        //System.out.print(currentCell.getStringCellValue());
			                        yearofcomp = currentCell.getStringCellValue().toString();
			                        data.add(currentCell.getStringCellValue());
			                    } else if (currentCell.getCellTypeEnum() == CellType.NUMERIC) {
			                    	//System.out.print(currentCell.getNumericCellValue());
			                    	empid = (int)currentCell.getNumericCellValue();
			                        data.add(empid);
			                    }
			                                 
			                }
			                System.out.println();
			                if(!yearofcomp.contains("Type")){
			                	sql="insert into etg_app.AppraisalETGList values ("+empid+",\""+yearofcomp+"\")";
			                	stmt.executeUpdate(sql);
			                }
			                System.out.println(yearofcomp +""+ empid);
			                

			            }
			        } catch (FileNotFoundException e) {
			            e.printStackTrace();
			        } catch (IOException e) {
			            e.printStackTrace();
			        }

		          
		        }catch(Exception e){System.out.println(e);}  
		        return "manager";  
		}
		      
		        
}
