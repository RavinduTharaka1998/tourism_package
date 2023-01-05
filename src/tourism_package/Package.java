package tourism_package;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class Package {
	
	
	public static int InsertPackage(String pname,String hname, String location, String description, String phone, String price) {
		int isSuccess = 0;
		// connect DB
		String url = "jdbc:mysql://localhost:3306/tourism";
		String user = "root";
		String pwd = "Rambo123";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pwd);

			Statement stmt = con.createStatement();
			String sql = "insert into package values(0,'" + pname + "','" + hname + "','" + location + "', '" + description + "','" + phone + "','" + price + "')";

			int at = stmt.executeUpdate(sql);

			if (at > 0) {

				isSuccess = 1;
			} else if (at < 0) {

				isSuccess = 0;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	
	public static int UpdatePackage(int id,String pname,String hname, String location,String description,String phone,String price) {
		
		int result = 0;
		
		String url = "jdbc:mysql://localhost:3306/tourism";
		String user = "root";
		String pwd = "Rambo123";
  
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,user,pwd);
			
			Statement stmt = con.createStatement();	
			String sql = "update package set pname = '"+pname+"',hname = '"+hname+"',location = '"+location+"',description = '"+description+"',phone = '"+phone+"',price = '"+price+"' where idpackage = '"+id+"'";
			System.out.println("SQL Result: "+sql);
			int rs = stmt.executeUpdate(sql);
			System.out.println("SQL Result: "+rs);
			
			if(rs > 0) {
				result = 1;
			}
			else {
				result = 0;
			}
			
		
	}catch(Exception e){
		
		e.printStackTrace();
	}
		
		return result;
	}
	
	
	public static int DeletePackage(int id) {
	    int result=0;
	    
	    String url = "jdbc:mysql://localhost:3306/tourism";
		String user = "root";
		String pwd = "Rambo123";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pwd);

			Statement stmt = con.createStatement();
			String sql = "delete from package where idpackage ='"+id+"'" ;

			int rn = stmt.executeUpdate(sql);
			if(rn>0)
			{
				result=1;
			}
			else
			{
				result=0;
			}
			
		
	}catch(Exception e)
		
	    {
		e.printStackTrace();
	    }
		
		return result;
	}
}
