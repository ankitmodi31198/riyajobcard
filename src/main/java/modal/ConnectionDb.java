package modal;

import java.sql.*;


public class ConnectionDb {
	
		 public static Connection getConnection(){  
		        Connection con=null;  
		        try{  
		            Class.forName("com.mysql.jdbc.Driver");  
		            con= DriverManager.getConnection("jdbc:mysql://us-cdbr-iron-east-03.cleardb.net/heroku_be92dccf6c8c5bd","b0709172233cc8","8e3bb54c");
		        }catch(Exception e){System.out.println(e);}  
		        return con; 
		    }


	}


