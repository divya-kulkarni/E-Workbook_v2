package onLoad;

import java.sql.*;
import java.io.*;

public class showAssg
{
	String aname,ques,id;
	Date adate,ddate;
	public showAssg()
	{
	
	}
	public showAssg(String assgName)throws Exception
	{
		Class.forName("org.postgresql.Driver");
		String assgId;
		String s=null;
		int i=0;
		Connection connection=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres"," ");
		PreparedStatement preparedStatement = connection.prepareStatement("select * from assignmentmaster where assignmentname=?");
		preparedStatement.setString(1, assgName); 
		ResultSet resultSet = preparedStatement.executeQuery();
		while(resultSet.next())
	    {
	    				
	        			System.out.println("rec found!!!!");
    					id=resultSet.getString(1);
    					aname=resultSet.getString(2);
    					ques=resultSet.getString(4);
    					System.out.println("Id :"+id);
    					preparedStatement = connection.prepareStatement("select * from assignmentbatch where assignmentid=?");
    					preparedStatement.setString(1, id);
    					ResultSet resultSet1 = preparedStatement.executeQuery();
    					if(resultSet1.next())
    					{
    						adate=resultSet1.getDate(3);
    						ddate=resultSet1.getDate(4);
    					}
    					System.out.println("adate :"+adate);	
    					
    					

		}
		
	}
	public String getan()
	{
		return aname;
	}
	public String ques()
	{
		return ques;
	}
	public Date adate()
	{
		return adate;
	}
	public Date ddate()
	{
		return ddate;
	}
	
		
}
