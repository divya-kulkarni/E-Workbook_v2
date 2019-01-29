package Admin;
import java.sql.*;

public class CreateMember
{
	
	public static void createMember(String mid,String un,String pwd,long val,String role)throws Exception
	{ 
		Class.forName("org.postgresql.Driver");
		Connection connection=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres"," ");
		PreparedStatement prepareStatement=connection.prepareStatement("Insert into member values(?,?,?,?,?,?,?,?,?,?)");
		prepareStatement.setString(1,mid);
		prepareStatement.setString(2,un);
		prepareStatement.setString(3,pwd);
		prepareStatement.setDate(4, java.sql.Date.valueOf(java.time.LocalDate.now()));
		prepareStatement.setDate(5, java.sql.Date.valueOf(java.time.LocalDate.now()));	
		prepareStatement.setBoolean(6,false);
		prepareStatement.setDate(7, java.sql.Date.valueOf(java.time.LocalDate.now()));
		prepareStatement.setBoolean(8,true);
		prepareStatement.setLong(9,val);
		prepareStatement.setString(10,role);
		if(prepareStatement.executeUpdate()!=-1)
			System.out.println("Executeed");
		else
			System.out.println("Yikes");
	}
}
		
		
		
		
		

