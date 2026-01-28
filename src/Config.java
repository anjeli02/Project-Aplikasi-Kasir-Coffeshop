/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author HP
 */
public class Config {
    private static Connection mysqlconfig;

    
    public static Connection configDB() throws SQLException {
        try {
            // Pengaturan URL, Username, dan Password database
            String url = "jdbc:mysql://localhost:3306/db_coffeeshop";
            String username = "root";
            String password = "";

            // Registrasi Driver MySQL
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
            mysqlconfig = DriverManager.getConnection(url, username, password);    
            
        } catch (Exception e) {
            System.err.println("Koneksi gagal.. " + e.getMessage());
        }
        return mysqlconfig;
    }

    /**
     * Method getConfig untuk mengambil koneksi secara statis
     * Tanpa membuang Exception (UnsupportedOperationException)
     */
    public static Connection getConfig() throws SQLException {
    String url = "jdbc:mysql://localhost:3306/db_coffeeshop";
    String user = "root";
    String pass = "";
    return DriverManager.getConnection(url, user, pass);
}
}