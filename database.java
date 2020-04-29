package myclass;
import java.sql.*;
public class database {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		
		
		try {
			
			Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/local?autoReconnect=true&useSSL=false","root","6343");
			
			//Statement
			Statement Stmt = myConn.createStatement();
			//Query
			ResultSet myRs=Stmt.executeQuery("Select a.title\r\n" + 
					"from band as b,album as a\r\n" + 
					"WHERE b.bid=a.bid and b.bid=001");
			
			while(myRs.next()) {
				System.out.println(myRs.getString("title"));
			}
			
		}
		catch(Exception exc) {
			exc.printStackTrace();
		}
	}

}
