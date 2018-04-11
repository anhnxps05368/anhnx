/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Genn
 */
public class Productsz {

    public Productsz() {
    }

    public List<Product> showProduct(String tensp) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://anhnx.database.windows.net:1433;database=inf205_anhnx";
            Connection con = DriverManager.getConnection(url, "anhnx@anhnx", "abc@1234");
            String sql = "Select * from Products";
            if (tensp.length() > 0) {
                sql="select * from Products where name like '%" + tensp + "%'";
            }
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(sql);
            List<Product> list = new ArrayList<Product>();
            while (rs.next()) {
                String code = rs.getString("code");
                String name = rs.getString("name");
                Float price = rs.getFloat("price");
                String image = rs.getString("image");
                Product sp = new Product(code, name, price, image);
                list.add(sp);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public void delete(String masp) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://anhnx.database.windows.net:1433;database=inf205_anhnx";
            Connection con = DriverManager.getConnection(url, "anhnx@anhnx", "abc@1234");
            String sql = "delete from Products where code = ?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, masp);
            stm.executeUpdate();
            stm.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void insert(String masp, String tensp, float gia, String image) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://anhnx.database.windows.net:1433;database=inf205_anhnx";
            Connection con = DriverManager.getConnection(url, "anhnx@anhnx", "abc@1234");
            String sql = "insert into Products values (?,?,?,?)";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, masp);
            stm.setString(2, tensp);
            stm.setFloat(3, gia);
            stm.setString(4, image);
            stm.executeUpdate();
            stm.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void update(String masp, String tensp, float gia, String image) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://anhnx.database.windows.net:1433;database=inf205_anhnx";
            Connection con = DriverManager.getConnection(url, "anhnx@anhnx", "abc@1234");
            String sql = "update Products set name=?, price=?, image=? where code=?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(4, masp);
            stm.setString(1, tensp);
            stm.setFloat(2, gia);
            stm.setString(3, image);
            stm.executeUpdate();
            stm.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
