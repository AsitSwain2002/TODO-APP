package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.UserDao;
import com.Dto.User;

@WebServlet("/login")
public class Login extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		UserDao udo = new UserDao();
		User fetchUserByEmail = udo.fetchUserByEmail(email);
		
		session.setAttribute("User", fetchUserByEmail);
		
		if(fetchUserByEmail != null) {
			if(password.equals(fetchUserByEmail.getPassword()))
			{
			resp.sendRedirect("home.jsp");
			}
			else {
				session.setAttribute("Paswrong", "Invalid Password");
				resp.sendRedirect("login.jsp");
			}
		}
		else {
			session.setAttribute("Emailwrong", "Invalid Email");
			resp.sendRedirect("login.jsp");
		}
		
	}
}
