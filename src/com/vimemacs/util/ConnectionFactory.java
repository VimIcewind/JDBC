package com.vimemacs.util;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

/**
 * Created by hwd on 2015/10/3.
 */
public class ConnectionFactory {

    private static String driver;
    private static String dburl;
    private static String user;
    private static String password;

    private static final ConnectionFactory factory = new ConnectionFactory();

    private Connection conn;

    static {
        Properties prop = new Properties();
        try {
            InputStream in = ConnectionFactory.class.getClassLoader().getResourceAsStream("dbconfig.properties");
            prop.load(in);
        } catch (Exception e) {
            System.out.println("======== 配置文件读取错误 ========");
            e.printStackTrace();
        }

        driver = prop.getProperty("driver");
        dburl = prop.getProperty("dburl");
        user = prop.getProperty("user");
        password = prop.getProperty("password");
    }

    public ConnectionFactory() {
    }

    public static ConnectionFactory getInstance() {
        return factory;
    }

    public Connection makeConnection() {
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(dburl, user, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
}
