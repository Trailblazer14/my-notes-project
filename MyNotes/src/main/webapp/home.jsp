<%@ page language="java" contentType="text/html;charset=UTF-8" %>

<%
	UserDetails user2 = (UserDetails) session.getAttribute("userD");

	if (user2 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("login-error", "Coś poszło nie tak. Proszę zaloguj się ponownie.");
}
%>
<!DOCTYPE html>
<html lang="pl">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Strona startowa</title>
<link rel="icon" type="image/x-icon" href="img/favicon.png">

<%@include file="all_components/allcss.jsp" %>
</head>

<body>

<%@include file="all_components/navbar.jsp" %>


    <section class="bg-cover hero-section" style="background-image: url(img/note_1.jpg);">
        <div class="overlay"></div>
        <div class="container text-white text-center">
            <div class="row">
                <div class="col-12">
                    <h1 class="display-4 mb-10">ZACZNIJ TWORZYĆ SWOJE NOTATKI</h1>
                    <a href="addNotes.jsp" class="btn btn-dark btn-lg">Rozpocznij</a>
                </div>
            </div>
        </div>
    </section>

<%@include file="all_components/footer.jsp" %>
</body>
</html>