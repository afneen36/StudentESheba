import javax.swing.*;
import java.awt.event.ActionEvent;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.sql.*;


public class doc{

    // JDBC URL, username, and password of MySQL server
    private static final String URL = "jdbc:mysql://localhost:3306/document_storage";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "@2003Moon2003";

    // SQL queries
    private static final String INSERT_QUERY = "INSERT INTO document_storage (username, birth_certificate, nid_copy, ssc_certificate, hsc_certificate) VALUES (?, ?, ?, ?, ?)";
    private static final String SELECT_ALL_QUERY = "SELECT * FROM document_storage";

    public static void main(String[] args) {
        try {
            // Register JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Open a connection
            Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);

            // Insert a record
            insertDocument(connection, "example_user", new byte[]{}, new byte[]{}, new byte[]{}, new byte[]{});

            // Retrieve all records
            retrieveAllDocuments(connection);

            // Close the connection
            connection.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    private static void insertDocument(Connection connection, String username, byte[] birthCertificate, byte[] nidCopy, byte[] sscCertificate, byte[] hscCertificate) throws SQLException {
        try (PreparedStatement preparedStatement = connection.prepareStatement(INSERT_QUERY)) {
            preparedStatement.setString(1, username);
            preparedStatement.setBytes(2, birthCertificate);
            preparedStatement.setBytes(3, nidCopy);
            preparedStatement.setBytes(4, sscCertificate);
            preparedStatement.setBytes(5, hscCertificate);
            preparedStatement.executeUpdate();
            System.out.println("Document inserted successfully.");
        }
    }

    private static void retrieveAllDocuments(Connection connection) throws SQLException {
        try (PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_QUERY)) {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String username = resultSet.getString("username");
                // Retrieve other fields as needed
                // byte[] birthCertificate = resultSet.getBytes("birth_certificate");
                // byte[] nidCopy = resultSet.getBytes("nid_copy");
                // byte[] sscCertificate = resultSet.getBytes("ssc_certificate");
                // byte[] hscCertificate = resultSet.getBytes("hsc_certificate");
                System.out.println("ID: " + id + ", Username: " + username);
                // Print other fields as needed
            }
        }
    }
}
