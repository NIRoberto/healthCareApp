package login;


/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
import java.io.PrintWriter;
import login.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import medicine.MedModel;


/*
*
 *
 * @author CSE
 */
public class UserDatabase {

   static   Connection con;

    public UserDatabase(Connection con) {
        this.con = con;
    }

    public User Login(String email, String password) {
        User user = null;
        try {
            String query = "select * from users  where email=? and password=?";
            PreparedStatement p = this.con.prepareStatement(query);
            p.setString(1, email);
            p.setString(2, password);
            ResultSet rs = p.executeQuery();
            if (rs.next()) {
                user = new User();
                user.setId(rs.getInt("id"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                user.setRole(rs.getString("role"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }
    public boolean Register(User user) {
        boolean res = true;

        try {
            String query = "insert into users values(?,?, ? ,?,?)";
            PreparedStatement p = this.con.prepareStatement(query);
            p.setInt(1, user.getId());
            p.setString(2, user.getName());
            p.setString(3, user.getEmail());
            p.setString(4, user.getPassword());
            p.setString(5, user.getRole());
            p.executeUpdate();
            res = true;
        } catch (Exception e) {
            e.printStackTrace();
            res = false;
        }
        return res;
    }

    
    public static List<User> getAllUsers() {
        List<User> users = new ArrayList<>();
        try {
            String query = "select * from users";
            PreparedStatement p = con.prepareStatement(query);

            ResultSet rs = p.executeQuery();
            while (rs.next()) {
                String name = rs.getString("name");
                String email = rs.getString("email");
                String password = rs.getString("password");
                String role = rs.getString("role");
                int id = rs.getInt("id");
                User user = new User(id,name, email, password,role );
                users.add(user);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return users;

    }
    public static void main(String[] args) {
        User u = new User();

    }
}
