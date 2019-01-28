package CDB;
import java.sql.*;

public class CDB
{    
    public static void createClass(String id, String name)
    {
        Class.forName("org.postgresql.Driver");
		Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres"," ");
        
        String query = "Insert into ClassMaster values(id,name);";
    }
    
        public static void createDivision(String id, String name)
    {
        Class.forName("org.postgresql.Driver");
		Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres"," ");
        
        String query = "Insert into DivisionMaster values(id,name);";
    }
    
        public static void createBatch(String id, String name, int bno, String classID, String divisionID)
    {
        Class.forName("org.postgresql.Driver");
		Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres"," ");
        
       //Could not write this one
            //String query = "Insert into DivisionMaster values(id,name,bno,);";
    }
}