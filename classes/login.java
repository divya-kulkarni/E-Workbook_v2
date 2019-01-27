package Login;

import java.sql.*;
import java.io.*;

public class login
{
	public static String loginValidation(String usr,String pwd)throws Exception
	{
		Class.forName("org.postgresql.Driver");
		String memberid;
		Connection connection=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres"," ");
		PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM member WHERE username=? and password=? ");
		preparedStatement.setString(1, usr);
		preparedStatement.setString(2, pwd); 
		ResultSet resultSet = preparedStatement.executeQuery();
		if (resultSet.next())
		{
			if(resultSet.getBoolean(8))
	   			return resultSet.getString(10);
	   	}
	   	return "ERROR";
    }
	public static int rolecmp(String s,String s1)
	{
		String a="Student";
		String b="Admin";
		String c="Teacher";
		if(a.equals(s))
		{
			System.out.println("ROLE VALID");
			return 1;
		}
		if(b.equals(s))
		{
			System.out.println("ROLE VALID");
			return 2;
		}
		if(c.equals(s))
		{
			System.out.println("ROLE VALID");
			return 3;
		}
		else
			System.out.println("ROLE NOT VALID");
		return 0;
	}
}
