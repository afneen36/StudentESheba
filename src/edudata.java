import java.sql.*;

public class edudata {
    // JDBC URL, username, and password of MySQL server
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/edu";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "@2003Moon2003";

    public static void main(String[] args) {
        try {
            // Establish a connection
            Connection connection = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);

            // Create a statement
            Statement statement = connection.createStatement();

            // Create table if not exists
            String createTableQuery = "CREATE TABLE IF NOT EXISTS edu (" +
                    "Username VARCHAR(50) NOT NULL," +
                    "Password VARCHAR(100) NOT NULL," +
                    "SscFrom VARCHAR(50) NOT NULL," +
                    "SscGroup VARCHAR(50) NOT NULL," +
                    "SscRegNo VARCHAR(50) NOT NULL," +
                    "SscRoll VARCHAR(50) NOT NULL," +
                    "SscGpa VARCHAR(50) NOT NULL," +
                    "SscPassingYear VARCHAR(50) NOT NULL," +
                    "HscFrom VARCHAR(50) NOT NULL," +
                    "HscGroup VARCHAR(50) NOT NULL," +
                    "HscRoll VARCHAR(50) NOT NULL," +
                    "HscGpa VARCHAR(50) NOT NULL," +
                    "HscPassingYear VARCHAR(50) NOT NULL," +
                    "MastersDegree VARCHAR(50) NOT NULL," +
                    "MastersFrom VARCHAR(50) NOT NULL," +
                    "MStudentId VARCHAR(50) NOT NULL," +
                    "MastersCgpa VARCHAR(50) NOT NULL," +
                    "MastersPassingYear VARCHAR(50) NOT NULL," +
                    "HonoursDegree VARCHAR(50) NOT NULL," +
                    "HonoursFrom VARCHAR(50) NOT NULL," +
                    "HStudentId VARCHAR(50) NOT NULL," +
                    "HonoursCgpa VARCHAR(50) NOT NULL," +
                    "HonoursPassingYear VARCHAR(50) NOT NULL" +
                    ")";
            statement.executeUpdate(createTableQuery);

            // Insert sample data (you can replace this with your actual data)
            String insertDataQuery = "INSERT INTO edu VALUES ('user1', 'pass1', 'SSC School 1', 'Science', '1234', 'S1001', '5.00', '2010', 'HSC College 1', 'Science', 'H1001', '4.75', '2012', 'Masters', 'University 1', 'M001', '3.80', '2016', 'Bachelors', 'University 2', 'B001', '3.50', '2014')";
            statement.executeUpdate(insertDataQuery);

            // Execute a query to retrieve data
            ResultSet resultSet = statement.executeQuery("SELECT * FROM edu");

            // Print the results
            while (resultSet.next()) {
                System.out.println("Username: " + resultSet.getString("Username"));
                // Print other columns similarly
            }

            // Close connections
            resultSet.close();
            statement.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
