package edu.cuit.easybbs.dao;

import java.sql.*;

import edu.cuit.easybbs.entity.user;
/*保存用户注册时的信息到数据库里面*/
public class registDao {
	private static registDao instance = null;

	public static registDao getInstance() {
		if (instance == null) {
			instance = new registDao();
		}
		return instance;
	}

	//
	public boolean saveUser(user UseInfo) {
		Connection conn = null;
		try {
			conn = DB.getCon(); 
			String sql = "insert into UserInfo(username,password,sex,age,email,telephone) values(?,?,?,?,?,?)"; // insert

			PreparedStatement pstmt = conn.prepareStatement(sql); //

			pstmt.setString(1, UseInfo.getUsername());
			pstmt.setString(2, UseInfo.getPassword());
			pstmt.setString(3, UseInfo.getSex());
			pstmt.setString(4, UseInfo.getAge());
			pstmt.setString(5, UseInfo.getEmail());
			pstmt.setString(6, UseInfo.getTelephone());

			pstmt.executeUpdate(); //
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return false;
	}
}
