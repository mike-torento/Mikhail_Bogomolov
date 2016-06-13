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

    public static List<Service> getServiceList() throws SQLException {
        List<Service> serviceList = new ArrayList<Service>();
        Connection dbConnection = getConnection();
        Statement statement = dbConnection.createStatement();
        String selectServices = "SELECT id_service, name,price,info from SERVICE";

        ResultSet rs = statement.executeQuery(selectServices);
        while (rs.next()) {
            Service s = new Service();
            s.setId(rs.getLong("id_service"));
            s.setName(rs.getString("name"));
            s.setPrice(rs.getBigDecimal("price"));
            s.setInfo(rs.getString("info"));
            serviceList.add(s);

        }
        dbConnection.close();
        return serviceList;
    }

    public static Service getByID(Long id) throws SQLException {
        Connection dbConnection = getConnection();
        Statement statement = dbConnection.createStatement();
        Service s = new Service();

        String selectService = "SELECT id_service, name,price,info from SERVICE where id_service=" + id;
        ResultSet rs = statement.executeQuery(selectService);
        while (rs.next()) {
            s.setId(rs.getLong("id_service"));
            s.setName(rs.getString("name"));
            s.setPrice(rs.getBigDecimal("price"));
            s.setInfo(rs.getString("info"));
        }
        dbConnection.close();
        return s;
    }

    public static List<Service> getByUserID(Long userID) throws SQLException{
        List<Long> idList = new ArrayList<Long>();
        List<Service> serviceList = new ArrayList<>();
        Connection dbConnection = getConnection();
        Statement statement = dbConnection.createStatement();
        String selectIDServices = "SELECT id_service from USER_SERVICE where id_user="+userID;

        ResultSet rs = statement.executeQuery(selectIDServices);
        while (rs.next()) {
            idList.add(rs.getLong("id_service"));

        }
         for (Long id : idList) {
            serviceList.add(getByID(id));
        }

        dbConnection.close();
        return serviceList;
        
        
    }
      
    public static List<Service> getServicesYouCanConnect(Long userID) throws  SQLException{
         List<Long> serviceList = new ArrayList<Long>();
         List<Long> idList = new ArrayList<Long>();
         
        Connection dbConnection = getConnection();
        Statement statement = dbConnection.createStatement();
        String selectServices = "SELECT id_service from SERVICE";

        ResultSet rs = statement.executeQuery(selectServices);
        while (rs.next()) {
            serviceList.add(rs.getLong("id_service"));
        }
        
         String selectIDServices = "SELECT id_service from USER_SERVICE where id_user="+userID;

        rs = statement.executeQuery(selectIDServices);
        while (rs.next()) {
            idList.add(rs.getLong("id_service"));
        }
        serviceList.removeAll(idList);
        List<Service> list = new ArrayList<>();
        for (Long id : serviceList) {
            list.add(getByID(id));
        }
        return list;
    }
    
    
    
}
