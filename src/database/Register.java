package database;

import database.ConnectionProvider;
import java.sql.*;
import database.User;

public class Register {
	public static int register(User u){  
		int status=0;  
		try{
		System.out.println("Connecting to database");
		Connection con= ConnectionProvider.getCon(); 
		System.out.println("Connected to database");
		PreparedStatement ps = con.prepareStatement("insert into auth values(?,?,?,?)");  
		ps.setString(1,u.getuname());  
		ps.setString(2,u.geturollno());
		ps.setString(3,u.getubranch()); 
		ps.setString(4,u.getupass());                
		status = ps.executeUpdate();  
		
		}catch(Exception e){}  
		      
		return status;  
		}
}
