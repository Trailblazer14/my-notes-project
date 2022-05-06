<%@page import="com.User.Post"%>
<%@page import="java.util.List"%>
<%@page import="com.Db.DBConnect"%>
<%@page import="com.DAO.PostDAO"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"%>


<%
UserDetails user3 = (UserDetails) session.getAttribute("userD");

if (user3 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("login-error", "Błąd logowania. Zaloguj się ponownie.");
}
%>
<!DOCTYPE html>
<html lang="pl">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Edytuj notatki</title>
<link rel="icon" type="image/x-icon" href="img/favicon.png">
<%@include file="all_components/allcss.jsp"%>
</head>
<body>
	<%@include file="all_components/navbar.jsp"%>

	<%
	String updateMsg = (String) session.getAttribute("updateMsg");
	if (updateMsg != null) {
	%>
	<div class="alert alert-success" role="alert"><%=updateMsg%></div>
	<%
	session.removeAttribute("updateMsg");
	}
	%>

	<%
	String wrongMsg = (String) session.getAttribute("wrongMsg");
	if (wrongMsg != null) {
	%>
	<div class="alert alert-danger" role="alert"><%=wrongMsg%></div>
	<%
	session.removeAttribute("wrongMsg");
	}
	%>

	<div class="container">
		<h2 class="text-center">Moje Notatki:</h2>
		<div class="row">
			<div class="col-md-12">
				<%
				if (user3 != null) {
					PostDAO ob = new PostDAO(DBConnect.getConn());
					List<Post> post = ob.getData(user3.getId());
					for (Post po : post) {
				%>
				<div class="card mt-3">
					<img alt="" src="img/notes5.jpg" class="card-img-top mt-2 mx-auto"
						style="max-width: auto;">

					<div class="card-body p-4">
						<h4 class="card-title">
							<b><%=po.getTitle()%></b>
						</h4>
						<p><%=po.getContent()%></p>
						<p>
							<b class="text-primary">Autor: <%=user3.getName()%></b></br> <b
								class="text-primary"></b>
						</p>
						<p>
							<b class="text-primary">Data: <%=po.getPostDate()%></b></br> <b
								class="text-primary"></b>
						</p>


						<div class="container text-center mt-2">
							<a href="deleteServlet?note_id=<%=po.getId()%>"
								class="btn btn-danger">Usuń</a> <a
								href="edit.jsp?note_id=<%=po.getId()%>" class="btn btn-primary">Edytuj</a>

						</div>
					</div>
				</div>
				<%
				}
				}
				%>

			</div>
		</div>
	</div>
	<%@include file="all_components/footer.jsp"%>
</body>
</html>