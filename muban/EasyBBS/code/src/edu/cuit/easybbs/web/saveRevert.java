package edu.cuit.easybbs.web;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.cuit.easybbs.dao.DB;
import edu.cuit.easybbs.dao.revertDao;
import edu.cuit.easybbs.entity.revert;

public class saveRevert extends HttpServlet {

	public saveRevert() {
		super();
	}

	public void destroy() {
		super.destroy();
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		HttpSession session = request.getSession(true);
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String name = (String) request.getSession().getAttribute("username");
		System.out.println(name);
		String reply = request.getParameter("reply");
		String content = request.getParameter("content");
		String time = request.getParameter("time1");

		// 封装
		revert revert = new revert();
		revert.setName(name);
		revert.setReply(reply);
		revert.setContent(content);
		revert.setTime(time);

		Connection conn = null;
		conn = DB.getCon();
		// Statement st=conn.createStatement();
		// ResultSet rs=
		// st.executeQuery("select  *  from  reply  where  reply='" +reply + "'"
		// );

		boolean flag = revertDao.getInstance().saveRevert(revert); // 将用户信息写入数据库

		if (flag) { // 如果成功转发到 revertsucces.jsp
			request.getSession().setAttribute("reply", reply);
			response.sendRedirect(request.getContextPath()
					+ "/revertsuccess.jsp");
		} else {
			response.sendRedirect(request.getContextPath() + "/errorpage2.jsp");

		}

	}

	public void init() throws ServletException {
	}

}
