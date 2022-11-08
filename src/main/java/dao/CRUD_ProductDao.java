package dao;

import model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CRUD_ProductDao {
    static Connection conn = null;
    static PreparedStatement ps = null;
    static ResultSet rs = null;

    private Connection dao;

    public static List<Product> GetAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM product";

        try {
            conn = new Connect_mySql().getConnect(); // mở kết nối với sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getInt(5)));

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }

    public static void delete(int id) {
        String query = "delete from product where idProduct = ?";
        try {
            conn = new Connect_mySql().getConnect(); // mở kết nối với sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.execute();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public static void addProduct(Product product) {
        String query = "INSERT INTO `sanpham`.`product` (`idProduct`, `name`, `image`, `price`, `amount`) VALUES (?, ?, ?, ?, ?)";
        try {
            conn = new Connect_mySql().getConnect(); // mở kết nối với sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, product.getId());
            ps.setString(2, product.getName());
            ps.setString(3, product.getImage());
            ps.setDouble(4, product.getPrice());
            ps.setInt(5, product.getAmount());
            ps.execute();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public static void editProduct(Product product){
        String query = "UPDATE `sanpham`.`product` SET  `name` = ?, `image` = ?, `price` = ?, `amount` = ? WHERE (`idProduct` = ?)";
        try {
            conn = new Connect_mySql().getConnect(); // mở kết nối với sql
            ps = conn.prepareStatement(query);
            ps.setString(1, product.getName());
            ps.setString(2, product.getImage());
            ps.setDouble(3, product.getPrice());
            ps.setInt(4, product.getAmount());
            ps.setInt(5, product.getId());
            ps.execute();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public static Product findid(int id) {
        String query = "select * from product where idProduct = ?";
        try {
            conn = new Connect_mySql().getConnect(); // mở kết nối với sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs =ps.executeQuery();
            if (rs.next()) {
               int id1 = rs.getInt("idProduct");
               String name = rs.getString("name");
               String image = rs.getString("image");
               double price = rs.getDouble("price");
                int amount = rs.getInt("amount");
                return new Product(id1, name, image, price, amount);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

}
