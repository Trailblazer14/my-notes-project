<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@page import="com.User.Post"%>
<%@page import="com.Db.DBConnect"%>
<%@page import="com.DAO.PostDAO"%>


<%
UserDetails user1 = (UserDetails) session.getAttribute("userD");

if (user1 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("login-error", "Proszę się zalogować.");
}
%>
<!DOCTYPE html>
<html lang="pl">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Edytowanie Notatek</title>
<link rel="icon" type="image/x-icon" href="img/favicon.png">
<%@include file="all_components/allcss.jsp"%>
</head>
<body>

	<%@include file="all_components/navbar.jsp"%>
	<section class="bg-cover hero-section"
		style="background-image: url(img/note_1.jpg);">
		<div class="overlay"></div>
		<div class="container text-white text-center">
			<div class="row">
				<div class="col-12">
					<%
					Integer noteid = Integer.parseInt(request.getParameter("note_id"));
					PostDAO post = new PostDAO(DBConnect.getConn());
					Post p = post.getDataById(noteid);
					%>



					<h1 class="text-center">Edytuj Swoje Notatki</h1>

					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<form action="NoteEditServlet" method="post">
									<input type="hidden" value="<%=noteid%>" name="noteid">
									<div class="form-group">

										<label for="exampleInputEmail1">Tytuł</label> <input
											type="text" class="form-control" id="exampleInputEmail1"
											aria-describedby="emailHelp" name="title" required="required"
											value="<%=p.getTitle()%>">
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">Zawartość</label>
										<textarea rows="10" cols="" class="form-control"
											name="content" required="required"><%=p.getContent()%></textarea>
									</div>

									<div class="container text-center">
										<button type="submit" class="btn btn-primary">Zapisz zmiany</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>

	</section>
	<%@include file="all_components/footer.jsp"%>

</body>
</html>