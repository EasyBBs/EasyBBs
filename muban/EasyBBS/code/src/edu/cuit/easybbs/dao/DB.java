package edu.cuit.easybbs.dao;

import java.sql.Connection;
import java.sql.DriverManager;
/*加载驱动和连接数据库*/
public class DB {
	private static Connection conn = null;
	public static Connection getCon() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String user = "root";
			String pwd = "123123";
			String url = "jdbc:mysql://localhost:3306/standlwy?useSSL=false";
			conn = DriverManager.getConnection(url, user, pwd);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
}
