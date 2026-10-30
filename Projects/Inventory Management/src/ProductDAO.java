
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;

public class ProductDAO {

    public void displayProducts() {
        String url = "jdbc:mysql://localhost:3306/inventory";
        String username = "root";
        String password = "Surya@4494";

        String query = "SELECT * FROM products";

        try (
            Connection con = DriverManager.getConnection(
                url, username, password
            );
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(query)
        ) {
            while (rs.next()) {
                System.out.println(
                    "ID: " + rs.getInt("id")
                );
                System.out.println(
                    "Name: " + rs.getString("name")
                );
                System.out.println(
                    "Price: " + rs.getBigDecimal("price")
                );
                System.out.println(
                    "Quantity: " + rs.getInt("quantity")
                );
                System.out.println("--------------------");
            }

        } catch (SQLException e) {
            System.out.println("Unable to fetch products.");
            e.printStackTrace();
        }
    }
}
