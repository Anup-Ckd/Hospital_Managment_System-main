package com.user.servlet;

import java.io.IOException;


import com.dao.UserDao;
import com.db.DBConnect;
import com.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/user_register")
public class UserRegister extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {

			String fullName=req.getParameter("fullname");
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			
			UserDao dao = new UserDao(DBConnect.getConn());
            HttpSession session = req.getSession();

            if (dao.emailExists(email)) {
                session.setAttribute("errorMsg", "Email is already registered");
                resp.sendRedirect("signup.jsp");
            } else {
                User u = new User(fullName, email, password);
                boolean f = dao.register(u);

                if (f) {
                    session.setAttribute("succMsg", "Register Successfully");
                    resp.sendRedirect("user_login.jsp");
                } else {
                    session.setAttribute("errorMsg", "Something went wrong on the server");
                    resp.sendRedirect("signup.jsp");
                }
            }
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} 

	}

}