package dao;


import model.Service;
import java.sql.*;
import java.util.*;

public class ServiceDAO {
    static String url = "jdbc:postgresql://127.0.0.1:5432/postgres";
    static String name = "postgres";
    static String password = "12345";
private static Connection getConnection() {
        Connection dbConnection = null;
   
        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            System.out.println(e.getMessage());
        }
        try {
            dbConnection = DriverManager.getConnection(url, name, password);
            return dbConnection;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return dbConnection;
    }
    
public static List<Service> getServiceList() throws SQLException{
       List<Service> serviceList=new ArrayList<Service>();
       Connection dbConnection = getConnection();
       Statement statement = dbConnection.createStatement();
       String selectUsers = "SELECT id_service, name,price,info from SERVICE";
 
       ResultSet rs = statement.executeQuery(selectUsers);
       while (rs.next()){
           Service s=new Service();
           s.setId(rs.getLong("id_service"));
           s.setName(rs.getString("name"));
           s.setPrice(rs.getBigDecimal("price"));
           s.setInfo(rs.getString("info"));
           serviceList.add(s);

       }
       dbConnection.close();
       return serviceList;
   }    
        
}
