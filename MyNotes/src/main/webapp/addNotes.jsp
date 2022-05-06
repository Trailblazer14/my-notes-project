<%@ page language="java" contentType="text/html;charset=UTF-8"%>

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
<title>Dodaj notatki</title>
<link rel="icon" type="image/x-icon" href="img/favicon.png">
<%@include file="all_components/allcss.jsp"%>
</head>

<body>

	<%@include file="all_components/navbar.jsp"%>

	<section class="bg-cover"
		style="background-image: url(img/note_1.jpg);">
		<div class="overlay"></div>
		<div class="container text-white text-center">
			<div class="row">
				<div class="col-12">
					<h1 class="display-4">Dodaj notatkę</h1>

					<div class="container">
						<div class="row">
							<div class="col-md-12">

								<form action="AddNotesServlet" method="post">
									<div class="form-group">

										<%
										UserDetails us = (UserDetails) session.getAttribute("userD");
										if (us != null) {
										%>
										<input type="hidden" value="<%=us.getId()%>" name="uid">
										<%
										}
										%>

										<label for="exampleInputEmail1">Tytuł</label> <input
											type="text" class="form-control" id="exampleInputEmail1"
											aria-describedby="emailHelp" name="title" required="required">


										<div class="form-group">
											<label for="exampleInputEmail1">Zawartość</label>
											<textarea rows="9" class="form-control" name="content"
												required="required"></textarea>
										</div>

										<div class="container text-center">
											<button type="submit" class="btn btn-primary">Dodaj</button>
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
