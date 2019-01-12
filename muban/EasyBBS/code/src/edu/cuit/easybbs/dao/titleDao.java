package edu.cuit.easybbs.dao;

import java.sql.*;

import edu.cuit.easybbs.entity.title;
/*保存帖子到数据库*/
public class titleDao {
	private static titleDao instance = null;

	public static titleDao getInstance() {
		if (instance == null) {
			instance = new titleDao();
		}
		return instance;
	}

	public boolean saveTitle(title title) {
		Connection conn = null;
		try {
			conn = DB.getCon(); //
			String sql = "insert into discuss(name,email,subject,content,time,username) values(?,?,?,?,?,?)"; // insert

			PreparedStatement pstmt = conn.prepareStatement(sql); //

			pstmt.setString(1, title.getName());
			pstmt.setString(2, title.getEmail());
			pstmt.setString(3, title.getSubject());
			pstmt.setString(4, title.getContent());
			pstmt.setString(5, title.getTime());
			pstmt.setString(6, title.getUsername());

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
