<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="pl">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Logowanie</title>
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
								<h4>Logowanie</h4>
							</div>


							<%
							String invalidMsg = (String) session.getAttribute("login-failed");
							if (invalidMsg != null) {
							%>
							<div class="alert alert-danger" role="alert"><%=invalidMsg%></div>

							<%
							session.removeAttribute("login-failed");
							}
							%>

							<%
							String withoutLogin = (String) session.getAttribute("login-error");
							if (withoutLogin != null) {
							%>

							<div class="alert alert-danger" role="alert"><%=withoutLogin%></div>

							<%
							session.removeAttribute("login-error");
							}
							%>

							<%
							String lgMsg = (String) session.getAttribute("logoutMsg");
							if (lgMsg != null) {
							%>

							<div class="alert alert-success" role="alert"><%=lgMsg%></div>

							<%
							session.removeAttribute("logoutMsg");
							}
							%>

							<div class="card-body">
								<form action="loginServlet" method="post">
									<div class="form-group">
										<label>Email</label> <input type="email" class="form-control"
											id="exampleInputEmail1" aria-describedby="emailHelp"
											name="uemail">
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1" class="form-label">Hasło</label>
										<input type="password" class="form-control"
											id="exampleInputPassword1" name="upassword">
									</div>

									<button type="submit" class="btn btn-primary w-100">Zaloguj
										się</button>
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
