package edu.cuit.easybbs.dao;

import java.sql.*;

import edu.cuit.easybbs.entity.revert;
/*保存帖子到数据库*/
public class revertDao {
	private static revertDao instance = null;

	public static revertDao getInstance() {
		if (instance == null) {
			instance = new revertDao();
		}
		return instance;
	}

	//
	public boolean saveRevert(revert revert) {
		Connection conn = null;
		try {
			conn = DB.getCon(); //
			String sql = "insert into reply(name,content,time,reply) values(?,?,?,?)"; // insert
			PreparedStatement pstmt = conn.prepareStatement(sql); //

			pstmt.setString(1, revert.getName());
			pstmt.setString(2, revert.getContent());
			pstmt.setString(3, revert.getTime());
			pstmt.setString(4, revert.getReply());

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
