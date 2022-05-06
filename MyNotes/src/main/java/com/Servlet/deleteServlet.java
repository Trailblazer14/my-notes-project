package com.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.DAO.PostDAO;
import com.Db.DBConnect;

public class deleteServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Integer noteid = Integer.parseInt(request.getParameter("note_id"));
		PostDAO dao = new PostDAO(DBConnect.getConn());
		
		boolean f = dao.deleteNotes(noteid);
		HttpSession session = null;
		
		if(f) {
			session = request.getSession();
			session.setAttribute("updateMsg", "Notatka zosta³a usuniêta.");
			response.sendRedirect("showNotes.jsp");
		} else {
			session = request.getSession();
			session.setAttribute("wrongMsg", "Wyst¹pi³ problem z serwerem. Spróbuj ponownie.");
			response.sendRedirect("showNotes.jsp");
		}
	}

}
