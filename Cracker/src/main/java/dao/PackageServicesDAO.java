package dao;

import model.Service;
import java.sql.*;
import java.util.*;
import model.PackageServices;
import java.math.BigDecimal;

public class PackageServicesDAO {
        static String url = "jdbc:postgresql://localhost:5432/postgres";
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
    
//public static List<PackageServices> getPackageList() throws SQLException{
//       List<PackageServices> packageList=new ArrayList<PackageServices>();
//       Connection dbConnection = getConnection();
//       Statement statement = dbConnection.createStatement();
//       String selectPackages = "SELECT id_service, name,price,info from PACKAGE";
//
//       ResultSet rs = statement.executeQuery(selectPackages);
//       while (rs.next()){
//           PackageServices s=new PackageServices();
//           s.setId(Long.MIN_VALUE);
//           s.setName(name);
//           s.setPrice(BigDecimal.ONE);
//           s.
//       }
//       return packageList;
//   }   
        
}
