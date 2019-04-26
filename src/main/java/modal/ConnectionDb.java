package modal;

import java.sql.*;


public class ConnectionDb {
	
		 public static Connection getConnection(){  
		        Connection con=null;  
		        try{  
		            Class.forName("com.mysql.jdbc.Driver");  
		            /*con= DriverManager.getConnection("jdbc:mysql://us-cdbr-iron-east-03.cleardb.net/heroku_d6605bcfbc2eb2a","bfb48045b38f3a","b6bf2b78");*/
		            con= DriverManager.getConnection("jdbc:mysql://localhost:3306/heroku_d6605bcfbc2eb2a","bfb48045b38f3a","b6bf2b78");
		        }catch(Exception e){System.out.println(e);}  
		        return con; 
		    }


	}


