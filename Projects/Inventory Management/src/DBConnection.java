import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    public static void main(String[] args) {

        String url =
            "jdbc:mysql://localhost:3306/inventory";

        String username = "root";
        String password = "Surya@4494";

        try (Connection connection =
                 DriverManager.getConnection(
                     url, username, password)) {

            System.out.println(
                "Successfully connected to MySQL!"
            );

        } catch (SQLException e) {
            System.out.println(
                "Database connection failed."
            );
            e.printStackTrace();
        }
    }
}