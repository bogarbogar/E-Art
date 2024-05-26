package Userbean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao {
    private Connection connection;

    public UserDao() throws ClassNotFoundException {
        // Initialize connection in constructor
        try {
            String url = "jdbc:mysql://localhost:3306/ebookstore";
            String username = "root";
            String password = "26427";
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(url, username, password);
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e);
            // Handle connection error here
        }
    }

    public boolean registerUser(User user) {
        String sql = "INSERT INTO users1 (username, email, password, contact) VALUES (?, ?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, user.getUsername());
            statement.setString(2, user.getEmail());
            statement.setString(3, user.getPassword());
            statement.setString(4, user.getContact());
            int rowsInserted = statement.executeUpdate();
            return rowsInserted > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e);
            // Handle database operation error here
            return false;
        }
    }

    public User loginUser(String username, String password) {
        String sql = "SELECT * FROM users1 WHERE username = ? AND password = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, username);
            statement.setString(2, password);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    User user = new User();
                    user.setUsername(resultSet.getString("username"));
                    user.setEmail(resultSet.getString("email"));
                    user.setPassword(resultSet.getString("password"));
                    user.setContact(resultSet.getString("contact"));
                    return user;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e);
            // Handle database operation error here
        }
        return null;
    }

    public void closeConnection() {
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
                System.out.println(e);
                // Handle connection closing error here
            }
        }
    }
}
