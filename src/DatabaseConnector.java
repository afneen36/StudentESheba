import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
public class DatabaseConnector {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/esheba";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "@2003Moon2003";
    public static void main(String[] args) {
        try {
            Connection connection = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);
            System.out.println("Connected to the database");
            Statement statement = connection.createStatement();
            String createTableQuery = "CREATE TABLE IF NOT EXISTS esheba ("
                         + "RegNo INT AUTO_INCREMENT PRIMARY KEY,"
                         + "Username VARCHAR(50) NOT NULL,"
                         + "Password VARCHAR(100) NOT NULL,"
                         + "Name VARCHAR(100) NOT NULL,"
                         + "FathersName VARCHAR(100) NOT NULL,"
                         + "MothersName VARCHAR(100) NOT NULL,"
                         + "Email VARCHAR(100) NOT NULL,"
                         + "PresentAddress VARCHAR(255) NOT NULL,"
                         + "PermanentAddress VARCHAR(255) NOT NULL,"
                         + "PhoneNo VARCHAR(20) NOT NULL,"
                         + "BirthDate DATE NOT NULL,"
                         + "BirthRegNo VARCHAR(50) NOT NULL,"
                         + "NIDNo VARCHAR(20) NOT NULL,"
                         + "BloodGroup VARCHAR(5) NOT NULL,"
                         + "Religion VARCHAR(50) NOT NULL)";
                         
            statement.executeUpdate(createTableQuery);
            System.out.println("Table 'esheba' created successfully");
            statement.close();
            connection.close();
        } catch (SQLException e) {
            System.out.println("Connection failed or table creation failed. Error message: " + e.getMessage());
        }
    }
}