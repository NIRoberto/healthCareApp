/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package medicine;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author CSE
 */
public class MedDao {

    static Connection con;

    public MedDao(Connection con) {
        this.con = con;

    }

    public boolean addMedicine(MedModel med) {
        boolean test = false;

        try {
            PreparedStatement p = con.prepareStatement("INSERT  INTO  medicine  VALUES (?,?,?,?,?,?,?)");
            p.setString(1, med.getName());
            p.setString(2, med.getRate());
            p.setString(3, med.getQuantity());
            p.setString(4, med.getDate());
            p.setString(5, med.getCategory());
            p.setString(6, med.getManufacturer());
            p.setInt(7, med.getId());
            p.executeUpdate();
            test = true;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return test;

    }

    public static List<MedModel> getAllMedidcine() {
        List<MedModel> medicine = new ArrayList<>();
        try {
            String query = "select * from medicine";
            PreparedStatement p = con.prepareStatement(query);

            ResultSet rs = p.executeQuery();
            while (rs.next()) {
                String name = rs.getString("name");
                String rate = rs.getString("rate");
                String quantity = rs.getString("quantity");
                String dates = rs.getString("dates");
                String category = rs.getString("category");
                String manufacturer = rs.getString("manufacturer");
                int id = rs.getInt("id");
                MedModel singleMed = new MedModel(name, quantity, dates, rate, category, manufacturer, id);
                medicine.add(singleMed);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return medicine;

    }

    public static MedModel singleMedicine(int id) {

        MedModel singleMed = null;

        try {
            String query = "select *  from medicine where   id =?";
            PreparedStatement p = con.prepareStatement(query);
            p.setInt(1, id);
            ResultSet rs = p.executeQuery();
            while (rs.next()) {
                String name = rs.getString("name");
                String rate = rs.getString("rate");
                String quantity = rs.getString("quantity");
                String dates = rs.getString("dates");
                String category = rs.getString("category");
                String manufacturer = rs.getString("manufacturer");
                int Id = rs.getInt("id");
                singleMed = new MedModel(name, quantity, dates, rate, category, manufacturer, Id);
            }
        } catch (Exception e) {

            e.printStackTrace();

        }
        return singleMed;
    }
    public boolean editMedicine(MedModel med) {
        boolean test = false;
        try {
            PreparedStatement p = con.prepareStatement("UPDATE medicine SET name =?,rate=?,quantity=?,dates=?,category=?, manufacturer=?  WHERE id=?");
            p.setString(1, med.getName());
            p.setString(2, med.getRate());
            p.setString(3, med.getQuantity());
            p.setString(4, med.getDate());
            p.setString(5, med.getCategory());
            p.setString(6, med.getManufacturer());
            p.setInt(7, med.getId());
            p.executeUpdate();
            test = true;
        } catch (Exception e) {
            test=false;
            e.printStackTrace();
        }

        return test;

    }
    public boolean deleteMedicine(int id) {
        boolean res = false;

        String query = "delete  from medicine  where  id=?";
        try {
            PreparedStatement p = con.prepareStatement(query);
            p.setInt(1, id);
            p.execute();

            res = true;
        } catch (Exception e) {
            e.printStackTrace();
            res = false;

        }

        return res;
    }

}
