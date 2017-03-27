package dbBeanss;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class dbBean {
private Connection con;
	public boolean connect() throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://192.168.18.245:3306/javab6202","javab6202","javab6202");
		return true;
	}
	public ResultSet exeQuery(String sql) throws SQLException
	{
		Statement s= con.createStatement();
		ResultSet rs=s.executeQuery(sql);
		
		return rs;
				
	}
	public int UpdatQuery(String sql) throws SQLException
	{
		Statement s= con.createStatement();
		int r=s.executeUpdate(sql);
		
		return r;
	}
	public void close() throws SQLException
	{
		
		con.close();
		
	}
	

}
