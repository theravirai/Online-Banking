package mvc;
import java.sql.*;

import oracle.jdbc.driver.OracleDriver;
public class Model 
{
	private String name;
	private String usn;
	private int marks1;
	private int marks2;
	private int marks3;
	String url = "jdbc:oracle:thin:@//localhost:1521/XE";
	String un = "SYSTEM";
	String pw = "SYSTEM";
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet res = null;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUsn() {
		return usn;
	}
	public void setUsn(String usn) {
		this.usn = usn;
	}
	public int getMarks1() {
		return marks1;
	}
	public void setMarks1(int marks1) {
		this.marks1 = marks1;
	}
	public int getMarks2() {
		return marks2;
	}
	public void setMarks2(int marks2) {
		this.marks2 = marks2;
	}
	public int getMarks3() {
		return marks3;
	}
	public void setMarks3(int marks3) {
		this.marks3 = marks3;
	}
	public Model()throws Exception
	{
		DriverManager.registerDriver(new OracleDriver());
		con =DriverManager.getConnection(url, un, pw);//Be careful about it because it creates always problem, most of the person forget about it.
	}
	public void getResult()
	{
		try
		{
			String s = "SELECT * FROM STUDENT1 WHERE USN = ?";
			pstmt =  con.prepareStatement(s);
			pstmt.setString(1, usn);
			res = pstmt.executeQuery();
			while(res.next())
			{
				name = res.getString(1);
				usn = res.getString(2);
				marks1 = res.getInt(3);
				marks2 = res.getInt(4);
				marks3 = res.getInt(5);
			}
		}
		catch(Exception e)
		{
			System.out.println("Problem in getResult method");
		}
	}
}
