/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.cuit.easybbs.web;

import edu.cuit.easybbs.dao.DB;
import edu.cuit.easybbs.dao.registDao;
import edu.cuit.easybbs.entity.user;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;

/*
*根据用户注册信息跳转到不同提示页面
*/
public class addUser extends HttpServlet {

    public addUser() {
        super();
    }

    public void destroy() {
        super.destroy();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        //从 regist.jsp 获取参数
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String sex = request.getParameter("sex");
        String age = request.getParameter("age");
        String telephone = request.getParameter("telephone");
        String email = request.getParameter("email");
        //将用户信息封装到 user（javabean）
        user UseInfo = new user();
        UseInfo.setUsername(username);
        UseInfo.setPassword(password);
        UseInfo.setSex(sex);
        UseInfo.setAge(age);
        UseInfo.setTelephone(telephone);
        UseInfo.setEmail(email);
//连接数据库检查用户是否存在
        try {
            Connection conn = null;
            conn = DB.getCon();
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(
                    "select * from UserInfo where username ='" + username + "'  ");

            if (!rs.next()) {
                boolean flag = registDao.getInstance().saveUser(UseInfo);
// 将用户信息写入数据库
                if (flag) { // 如果成功转发到 registsucces.jsp
                    HttpSession session = request.getSession(true);
                    request.getSession().setAttribute("username", username
                    );
                    request.getSession().setAttribute("email", email);
                    response.sendRedirect(request.getContextPath() + "/registsuccess.jsp");
                } else {
                    response.sendRedirect(request.getContextPath() + "/errorpage.jsp");
                }
            } else {
                response.sendRedirect(request.getContextPath() + "/exist.jsp");
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    public void init() throws ServletException {
    }
}
