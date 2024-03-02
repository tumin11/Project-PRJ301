/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.Book;
import model.Type;

/**
 *
 * @author hovut
 */
public class DBContext {

    protected Connection connection;

    public DBContext() throws ClassNotFoundException, SQLException {
        String user = "min";
        String pass = "1104";
        String url = "jdbc:sqlserver://localhost:1433;databaseName=PRJ";
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        connection = DriverManager.getConnection(url, user, pass);
    }
    public ArrayList<Book> getListBook() {
        try {
            ArrayList<Book> listBook = new ArrayList<Book>();
            String sql = "select * from Book";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                int id= rs.getInt("id");
                String name = rs.getString("name");
                
                int quantity = rs.getInt("quantity");
                float price = rs.getFloat("price");
                String description = rs.getString("description");
                String image=rs.getString("image");

               Book b=new Book(id, name, quantity, price, description, image);
                listBook.add(b);

            }
            return listBook;
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;

    }
    public ArrayList<Type> getListType() {
        try {
            ArrayList<Type> listType = new ArrayList<Type>();
            String sql = "select * from Type";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                int id= rs.getInt("id");
                String type = rs.getString("type");
                
                Type t=new Type(id, type);
                listType.add(t);

            }
            return listType;
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;

    }
    public ArrayList<Book> getTop6Book() {
        try {
            ArrayList<Book> listBook = new ArrayList<Book>();
            String sql = "select top 6 * from Book order by quantity asc";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                int id= rs.getInt("id");
                String name = rs.getString("name");
                
                int quantity = rs.getInt("quantity");
                float price = rs.getFloat("price");
                String description = rs.getString("description");
                String image=rs.getString("image");

               Book b=new Book(id, name, quantity, price, description, image);
                listBook.add(b);

            }
            return listBook;
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;

    }
    public ArrayList<Book> getListBookByType(String tid) {
        try {
            ArrayList<Book> listBook = new ArrayList<Book>();
            String sql = "select  * from Book where type_id=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, tid);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                int id= rs.getInt("id");
                String name = rs.getString("name");
                
                int quantity = rs.getInt("quantity");
                float price = rs.getFloat("price");
                String description = rs.getString("description");
                String image=rs.getString("image");

               Book b=new Book(id, name, quantity, price, description, image);
                listBook.add(b);

            }
            return listBook;
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;

    }
    public Book getListBookByID(String tid) {
        try {
           
            String sql = "select  * from Book where id=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, tid);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                int id= rs.getInt("id");
                String name = rs.getString("name");
                
                int quantity = rs.getInt("quantity");
                float price = rs.getFloat("price");
                String description = rs.getString("description");
                String image=rs.getString("image");

               Book b=new Book(id, name, quantity, price, description, image);
                return b;

            }
            
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;

    }
    public ArrayList<Book> getListBookByName(String Name) {
        try {
            ArrayList<Book> listBook = new ArrayList<Book>();
            String sql = "select  * from Book where [name] like ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1,"%"+ Name+"%");
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                int id= rs.getInt("id");
                String name = rs.getString("name");
                
                int quantity = rs.getInt("quantity");
                float price = rs.getFloat("price");
                String description = rs.getString("description");
                String image=rs.getString("image");

               Book b=new Book(id, name, quantity, price, description, image);
                listBook.add(b);

            }
            return listBook;
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;

    }
    public ArrayList<Book> getListBookByPrice(String price1,String price2) {
        try {
            ArrayList<Book> listBook = new ArrayList<Book>();
            String sql = "select  * from Book where price between ? and ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, price1);
            statement.setString(2, price2);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                int id= rs.getInt("id");
                String name = rs.getString("name");
                
                int quantity = rs.getInt("quantity");
                float price = rs.getFloat("price");
                String description = rs.getString("description");
                String image=rs.getString("image");

               Book b=new Book(id, name, quantity, price, description, image);
                listBook.add(b);

            }
            return listBook;
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;

    }
    public Account login(String Username,String Password) {
        try {
           
            String sql = "select*from Account where username=? and password=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, Username);
            statement.setString(2, Password);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                int id= rs.getInt("uID");
                String username = rs.getString("username");
                String password = rs.getString("password");
                
                int isSeller = rs.getInt("isSeller");
                int isAdmin = rs.getInt("isAdmin");
                
                

              Account a=new Account(id, username, password, isSeller, isAdmin);
                return a;

            }
            
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;

    }
    public Account checkExist(String Username) {
        try {
           
            String sql = "select*from Account where username=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, Username);
            
            
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                int id= rs.getInt("uID");
                String username = rs.getString("username");
                String password = rs.getString("password");
                
                int isSeller = rs.getInt("isSeller");
                int isAdmin = rs.getInt("isAdmin");
                
                

              Account a=new Account(id, username, password, isSeller, isAdmin);
                return a;

            }
            
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;

    }
    public void signup(String username,String password) {
        try {
           
            String sql = "insert into Account values(?,?,0,0)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, password);
            
            statement.executeUpdate();
            
            
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

       

    }
}