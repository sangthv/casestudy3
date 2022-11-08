package dao;

import model.Account;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class LoginDao {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    private Connection dao;

    public Account login(String username, String password) {
        String query = "SELECT * FROM userlogin  where userName=? and password = ? ";

        try {
            conn = new Connect_mySql().getConnect(); // mở kết nối với sql
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6));

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    public Account checkAccountExist(String username) {
        String query = "SELECT * FROM userlogin  where userName=?  ";

        try {
            conn = new Connect_mySql().getConnect(); // mở kết nối với sql
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    public void dangKi(String email, String username, String password) {
        String query = "INSERT INTO userlogin(`email`, `userName`, `password`, `confirmpassword`, `rolle`) VALUES (?, ?, ?, ?, ?)";
        try {
            conn = new Connect_mySql().getConnect(); // mở kết nối với sql
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, username);
            ps.setString(3, password);
            ps.setString(4, password);
            ps.setInt(5, 1);
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Account> showAcount() {
        List<Account> list = new ArrayList<>();
        String query = "SELECT * FROM userlogin";

        try {
            conn = new Connect_mySql().getConnect(); // mở kết nối với sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6)));

            }return list;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
    public void deleteAccount(int id) {
        String query = "delete from  userlogin where idUser = ?";
        try {
            conn = new Connect_mySql().getConnect(); // mở kết nối với sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.execute();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}