package com.Servlet;

import com.DAO.UserDAO;
import com.Db.DBConnect;
import com.User.UserDetails;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


public class UserServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("fname");
        String email = request.getParameter("uemail");
        String password = request.getParameter("upassword");

        UserDetails us = new UserDetails();
        us.setName(name);
        us.setEmail(email);
        us.setPassword(password);

        UserDAO dao = new UserDAO(DBConnect.getConn());
        boolean f = dao.addUser(us);
        HttpSession session; 
        
        if (f){
        	session = request.getSession();
            session.setAttribute("reg-success", "Rejestracja przebieg³a pomyœlnie.");
            response.sendRedirect("register.jsp");
        } else {
        	session = request.getSession();
        	session.setAttribute("failed-msg", "Problem przy rejestracji. Spróbuj ponownie.");
        	response.sendRedirect("register.jsp");
        }
    }
}
