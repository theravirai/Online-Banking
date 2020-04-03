package project1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import oracle.jdbc.driver.OracleDriver;

public class Model 
{
	int acc_no;
	String cust_id;
	String pwd;
	int balance;
	String name;
	String email;
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet res = null;
	
	ArrayList al = new ArrayList();
	
	public int getAcc_no() {
		return acc_no;
	}
	public void setAcc_no(int acc_no) {
		this.acc_no = acc_no;
	}
	public String getCust_id() {
		return cust_id;
	}
	public void setCust_id(String cust_id) {
		this.cust_id = cust_id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public int getBalance() {
		return balance;
	}
	public void setBalance(int balance) {
		this.balance = balance;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public Model()//this is Constructor
	{
		try
		{
			DriverManager.registerDriver(new OracleDriver());
			con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/XE","SYSTEM","SYSTEM");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public boolean login()
	{
		try
		{
			String s = "SELECT * FROM BANK_APP WHERE CUST_ID=? AND PWD=?";
			pstmt = con.prepareStatement(s);
			pstmt.setString(1, cust_id);
			pstmt.setString(2, pwd);
			res = pstmt.executeQuery();
			while(res.next())
			{
				acc_no= res.getInt("acc_no");
				return true;
			}
			return false;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
	}
	public boolean checkBalance() 
	{
		try
		{
			String s = "SELECT BALANCE FROM BANK_APP WHERE ACC_NO = ?";
			pstmt = con.prepareStatement(s);
			pstmt.setInt(1, acc_no);
			res = pstmt.executeQuery();
			while(res.next())
			{
				balance = res.getInt("balance");
				return true;
			}
			return false;
		}
		catch(Exception e)		
		{
			e.printStackTrace();
			return false;
		}
	}
	public boolean changePassword()
	{
		try
		{
			String s = "UPDATE BANK_APP SET PWD = ? WHERE ACC_NO = ?";
			pstmt = con.prepareStatement(s);
			pstmt.setString(1, pwd);
			pstmt.setInt(2, acc_no);
			int result = pstmt.executeUpdate();
			if(result == 0)
			{
				return false;
			}
			else
			{
				return true;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean transfer(int t_acc_no) throws SQLException//Still in process
	{
		
	
			String s1 = "UPDATE BANK_APP SET BALANCE = BALANCE-? WHERE ACC_NO=?";
			pstmt = con.prepareStatement(s1);
			pstmt.setInt(1,balance);
			pstmt.setInt(2,acc_no);
			
			int result1 = pstmt.executeUpdate();
			if(result1!=0)
			{
				String s2 = "UPDATE BANK_APP SET BALANCE = BALANCE+? WHERE ACC_NO=?";
				pstmt = con.prepareStatement(s2);
				pstmt.setInt(1,balance);
				pstmt.setInt(2,t_acc_no);
				
				int result2 = pstmt.executeUpdate();
				if(result2!=0)
				{
					String s3 = "INSERT INTO BANK_STATUS VALUES(?,?,?)";
					pstmt = con.prepareStatement(s3);
					pstmt.setInt(1, t_acc_no);
					pstmt.setInt(2, acc_no);
					pstmt.setInt(3, balance);
					
					int result3 = pstmt.executeUpdate();
					if(result3!=0)
					{
						return true;
					}
					else
					{
						return true;
					}
				}
					else
					{
					return true;
					}
			}
			return false;
		}
		
 
	
	public ArrayList getStatement()
	{
		try
		{
			String s = "SELECT * FROM BANK_STATUS WHERE FROM_ACC_NO=?";
			pstmt = con.prepareStatement(s);
			pstmt.setInt(1,acc_no);
			res = pstmt.executeQuery();
			
			while(res.next()==true)
			{
				int a = res.getInt("TO_ACC_NO");
				al.add(a);
				int b = res.getInt("FROM_ACC_NO");
				al.add(b);
				int c = res.getInt("AMOUNT");
				al.add(c);
			}
			return al;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return al;
		}
	}
	
	public boolean resetPassword()
	{
		try
		{
			String s = "UPDATE BANK_APP SET PWD =? WHERE EMAIL = ?";
			pstmt = con.prepareStatement(s);
			pstmt.setString(1, pwd);
			pstmt.setString(2, email);
			int result = pstmt.executeUpdate();
			if(result==0)
			{
				return false;
			}
			else
			{
				return true;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
	}
}
