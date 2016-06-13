package dao;

import model.User;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class UserDAO {

    static Connection connection = null;
    static String url = "jdbc:postgresql://127.0.0.1:5432/postgres";
    static String name = "postgres";
    static String password = "12345";

    private static Connection getConnection() {
        Connection dbConnection = null;
        
        try {
            dbConnection = DriverManager.getConnection(url, name, password);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return dbConnection;
    }

    public static void addNewUser(User newUser) throws SQLException {
        Connection dbConnection = null;
        Statement statement = null;
        String insertUser = "INSERT INTO USERTABLE(login,password,name,phone,email) VALUES ('"
                + newUser.getLogin() + "','"
                + newUser.getPass() + "','"
                + newUser.getName() + "','"
                + newUser.getPhone() + "','"
                + newUser.getEmail() + "')";
        try {
            dbConnection = getConnection();
            statement = dbConnection.createStatement();
            statement.executeUpdate(insertUser);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            if (statement != null) {
                statement.close();
            }
            if (dbConnection != null) {
                dbConnection.close();
            }
        }
        dbConnection.close();
    }

    
    public static void deleteUser(Long id) throws SQLException {
        Connection dbConnection = null;
        Statement statement = null;
        String deleteUser = "DELETE FROM USERTABLE WHERE id_user=" + id;
        try {
            dbConnection = getConnection();
            statement = dbConnection.createStatement();

            statement.executeUpdate(deleteUser);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            if (statement != null) {
                statement.close();
            }
            if (dbConnection != null) {
                dbConnection.close();
            }
        }
        dbConnection.close();
    }

    public static List<User> getUserList() throws SQLException {
        List<User> userList = new ArrayList<User>();
        Connection dbConnection = getConnection();
        Statement statement = dbConnection.createStatement();
        String selectUsers = "SELECT id_user, login,password,name,phone,email from USERTABLE";

        ResultSet rs = statement.executeQuery(selectUsers);
        while (rs.next()) {
            User u = new User();
            u.setIdUser(rs.getLong("id_user"));
            u.setLogin(rs.getString("login"));
            u.setPass(rs.getString("password"));
            u.setName(rs.getString("name"));
            u.setPhone(rs.getString("phone"));
            u.setEmail(rs.getString("email"));
            userList.add(u);
        }
    dbConnection.close();
        return userList;
    }

    public static User getUserByLogin(String login) throws SQLException {
        User u = new User();
        Connection dbConnection = getConnection();
        Statement statement = dbConnection.createStatement();
        String selectUser = "SELECT id_user,login,password,name,phone,email from USERTABLE where (login)='" + login + "';";

        ResultSet rs = statement.executeQuery(selectUser);
        while (rs.next()) {
            u.setIdUser(rs.getLong("id_user"));
            u.setLogin(rs.getString("login"));
            u.setPass(rs.getString("password"));
            u.setName(rs.getString("name"));
            u.setPhone(rs.getString("phone"));
            u.setEmail(rs.getString("email"));
            
        }
        dbConnection.close();
        return u;
    }
    
    public static User getUserByID(Long id) throws SQLException {
        User u = new User();
        Connection dbConnection = getConnection();
        Statement statement = dbConnection.createStatement();
        String selectUser = "SELECT id_user,login,password,name,phone,email from USERTABLE where (id_user)='" + id + "';";

        ResultSet rs = statement.executeQuery(selectUser);
        while (rs.next()) {
            u.setIdUser(rs.getLong("id_user"));
            u.setLogin(rs.getString("login"));
            u.setPass(rs.getString("password"));
            u.setName(rs.getString("name"));
            u.setPhone(rs.getString("phone"));
            u.setEmail(rs.getString("email"));
            return u;
        }
        dbConnection.close();
        return u;
    }

    public static void replaceUser(Long id, User newUser) throws SQLException{
        Connection dbConnection = getConnection();
        Statement statement = dbConnection.createStatement();
        String replaceUser="UPDATE USERTABLE SET login ='" 
                +newUser.getLogin()  +"',password='"
                +newUser.getPass()+  "', name='"
                +newUser.getName()+"',phone='"
                +newUser.getPhone()+"',email='"
                +newUser.getEmail()+"' where id_user='" + id + "';";
         statement.executeUpdate(replaceUser);   
         dbConnection.close();
    }
    
   
}
