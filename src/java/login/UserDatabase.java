package login;


/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

import java.io.PrintWriter;
import login.User;

import java.sql.*;


/*
*
 *
 * @author CSE
 */
public class UserDatabase {

    Connection con;

    public UserDatabase(Connection con) {
        this.con = con;
    }

    public User  Login(String email, String password) {
        User user = null;
        try {
            String query = "select * from users  where email=? and password=?";
       
            PreparedStatement p = this.con.prepareStatement(query);
            p.setString(1, email);
            p.setString(2, password);
            ResultSet rs = p.executeQuery();
            if(rs.next()) {
                user = new User();
                user.setId(rs.getInt("id"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                System.out.println(user.getEmail());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }
    public static void main(String[] args) {
        User u  = new User();
        System.out.println(u.getEmail());
    }
}