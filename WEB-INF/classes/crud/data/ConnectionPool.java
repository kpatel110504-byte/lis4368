package crud.data;

import java.sql.Connection;
import java.sql.SQLException;
import javax.sql.DataSource;
import javax.naming.InitialContext;
import javax.naming.NamingException;

public class ConnectionPool {
    private static ConnectionPool pool = null;
    private static DataSource dataSource = null;

    private ConnectionPool() {
        try {
            InitialContext ic = new InitialContext();
            dataSource = (DataSource) ic.lookup("java:comp/env/jdbc/kyp22");
            System.out.println("JNDI lookup successful for jdbc/kyp22");
        } catch (NamingException e) {
            System.out.println("JNDI lookup failed for jdbc/kyp22");
            e.printStackTrace();
        }
    }

    public static synchronized ConnectionPool getInstance() {
        if (pool == null) {
            pool = new ConnectionPool();
        }
        return pool;
    }

    public Connection getConnection() {
        if (dataSource == null) {
            System.out.println("DataSource is null. Check Tomcat JNDI resource configuration.");
            return null;
        }

        try {
            return dataSource.getConnection();
        } catch (SQLException e) {
            System.out.println("Unable to get database connection.");
            e.printStackTrace();
            return null;
        }
    }

    public void freeConnection(Connection c) {
        if (c != null) {
            try {
                c.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}