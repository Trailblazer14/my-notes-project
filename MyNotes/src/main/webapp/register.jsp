<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="pl">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Rejestracja</title>
<link rel="icon" type="image/x-icon" href="img/favicon.png">
<%@include file="all_components/allcss.jsp"%>
</head>

<body>

	<%@include file="all_components/navbar.jsp"%>

	<section class="bg-cover"
		style="background-image: url(img/cover_2.jpg);">
		<div class="overlay"></div>
		<div class="container-fluid text-white text-center">
			<div class="row">
				<div class="col-12 section-intro text-center">

					<div class="col-md-4 offset-md-4">
						<div class="cardbody mt-5">
							<div class="card-header text-center text-white bg-custom">
								<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
								<h4>Rejestracja</h4>
							</div>

							<%
							String regMsg = (String) session.getAttribute("reg-success");
							if (regMsg != null) {
							%>
							<div class="alert alert-success" role="alert"><%=regMsg%>
								<a href="login.jsp">Zaloguj się</a> 
							</div>

							<%
							session.removeAttribute("reg-success");
							}
							%>

							<%
							String FailedMsg = (String) session.getAttribute("failed-msg");
							if (FailedMsg != null) {
							%>

							<div class="alert alert-danger" role="alert"><%=FailedMsg%></div>
							<%
							session.removeAttribute("failed-msg");
							}
							%>

							<div class="card-body">
								<form action="UserServlet" method="post">
									<div class="form-group">
										<label>Podaj imię</label> <input type="text"
											class="form-control" id="exampleInputEmail1"
											aria-describedby="emailHelp" name="fname">
									</div>

									<div class="form-group">
										<label>Podaj email</label> <input type="email"
											class="form-control" id="exampleInputEmail1"
											aria-describedby="emailHelp" name="uemail">
									</div>

									<div class="form-group">
										<label for="exampleInputPassword1" class="form-label">Podaj hasło</label> <input type="password" class="form-control"
											id="exampleInputPassword1" name="upassword">
									</div>

									<button type="submit" class="btn btn-primary w-100">Zarejestruj</button>
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
