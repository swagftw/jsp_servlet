	package database;  
	import java.sql.*;
	import com.mysql.cj.jdbc.*;;
	  
	public class ConnectionProvider {    
	public static Connection con;

	static{  
	try{  
		Class.forName("com.mysql.cj.jdbc.Driver");  
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/JDBC","clipbox","Roothere6^s"); 
		}catch(Exception e){
			e.printStackTrace();
		}  
	}  
	  
	public static Connection getCon(){  
		return con;  
	}  
	  
}  

