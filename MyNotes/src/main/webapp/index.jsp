<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="pl">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Strona domowa</title>
<link rel="icon" type="image/x-icon" href="img/favicon.png">
<%@include file="all_components/allcss.jsp"%>
</head>

<body data-bs-spy="scroll" data-bs-target=".navbar">
	<!--navbar-->
	<nav class="navbar fixed-top navbar-expand-lg navbar-light bg-white">
		<div class="container">
			<a class="navbar-brand" href="#"><i class="fa fa-cloud"
				aria-hidden="true"></i> My Salesforce Notes</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link" href="#home"><i
							class="fa fa-home" aria-hidden="true"></i>Start</a></li>
					<li class="nav-item"><a class="nav-link" href="#instruction">Instrukcja</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#quote">Motywacja</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#inspiration">Inspiracje</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#contact">Kontakt</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<!--hero-->
	<section id="home" class="bg-cover hero-section"
		style="background-image: url(img/note_1.jpg);">
		<div class="overlay"></div>
		<div class="container text-white text-center">
			<div class="row">
				<div class="col-12">
					<h1 class="display-4">All Your Salesforce Notes:</h1>
					<br>
					<h2 style="font-style: italic;">Anytime, anywhere</h2>
					<p class="my-4">
						Przytłacza Cię nadmiar materiałów do nauki w Internecie?<br>
						Godzinami szukasz w zakładkach adresu strony zawierającej ciekawy
						materiał?<br> Pamiętaj: proces przyswajania wiedzy na temat
						Salesforce to nie sprint, lecz <u>maraton</u>. <br>Uporządkowanie
						notatek w jednym miejscu pozwoli na złapanie drugiego oddechu i
						ułatwi ten proces.
					</p>
					<a href="login.jsp" class="btn btn-main">Logowanie</a> <a
						href="register.jsp" class="btn btn-main">Rejestracja</a>
				</div>
			</div>
		</div>
	</section>

	<!--instruction-->
	<section id="instruction" class="text-center">
		<div class="container">
			<div class="row">
				<div class="col-12 section-intro text-center">
					<h1>Instrukcja krok po kroku</h1>
					<div class="divider"></div>
					<p>
						Obawiasz się, że tworzenie i edytowanie notatek będzie kłopotliwe?<br>
						Spokojnie! Możesz łatwo to osiągnąć w trzech prostych krokach.
					</p>
				</div>
			</div>
			<div class="row g-4">
				<div class="col-md-4">
					<div class="service">
						<div class="service-img">
							<img src="img/note.jpg" alt="">

						</div>
						<h5 class="mt-5 pt-4">Krok pierwszy: Logowanie</h5>
						<p>Jeśli jesteś na tej stronie po raz pierwszy zarejestruj
							się, by móc w pełni korzystać z jej funkcjonalności. Jeśli to
							Twoja kolejna wizyta, skorzystaj z przycisku logowania.</p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="service">
						<div class="service-img">
							<img src="img/make_notes.jpg" alt="">

						</div>
						<h5 class="mt-5 pt-4">Krok drugi: Stwórz notatkę</h5>
						<p>Możesz swobodnie dodawać, edytować oraz usuwać swoje
							notatki. Pamiętaj o dodaniu linku do strony, aby ułatwić sobie
							nawigację w przyszłości.</p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="service">
						<div class="service-img">
							<img src="img/learn.jpg" alt="">

						</div>
						<h5 class="mt-5 pt-4">Krok trzeci: Korzystaj!</h5>
						<p>My Salesforce Notes to Twoje prywatne centrum zarządzania
							bazą wiedzy na temat Salesforce. Ciesz się uporządkowanym
							zestawem notatek, do którego możesz często wracać.</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!--quote-->
	<section id="quote" class="bg-cover"
		style="background-image: url(img/cover_2.jpg);">
		<div class="overlay"></div>
		<div class="container text-white text-center">
			<div class="row">
				<div class="col-12 section-intro text-center">
					<blockquote>
						<b>Sukces</b> jest sumą małych wysiłków, powtarzanych dzień po
						dniu. </br> <cite> - Robert Collier</cite>
					</blockquote>
				</div>
			</div>
		</div>
	</section>

	<!--inspiration-->
	<section id="inspiration" class="text-center">
		<div class="container">
			<div class="row">
				<div class="col-12 section-intro text-center">
					<h1>Notatki: Inspiracje</h1>
					<div class="divider"></div>
					<p>
						Wiedzę na temat ekosystemu Salesforce można czerpać z wielu
						źródeł.<br> Poniżej absolutne TOP 3, czyli propozycje z
						którymi zdecydowanie warto się zapoznać.
					</p>
				</div>
			</div>

			<div class="container">
				<div class="card-deck">
					<div class="card">
						<img src="img/trail_2.jfif" class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">Trailhead</h5>
							<p class="card-text">Nie ma lepszego sposobu na naukę niż
								platforma edukacyjna Trailhead: fantastyczne miejsce, które w
								unikalny sposób łączy naukę teorii, praktykę oraz zabawę.
								Trailhead to nieograniczona skarbnica wiedzy, a dostęp do niej
								jest darmowy. Uwaga: ogrom materiałów może przyprawić o zawrót
								głowy, dlatego warto skorzystać z filtrów.</p>
						</div>
						<div class="card-footer">
							<small class="text-muted"><a
								href="https://trailhead.salesforce.com/" target="_blank">Trailhead
									Homepage</a></small>
						</div>
					</div>
					<div class="card">
						<img src="img/doku3.jpg" class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">Dokumentacja</h5>
							<p class="card-text">Każdy programista wie, że w walce z
								chaosem kodu i mnożącymi się niespodziewanie błędami nie ma
								lepszego towarzysza niż dokumentacja (no, może z wyjątkiem
								StackOverflow). Warto skorzystać z pomocy tego nieocenionego
								przyjaciela, nie tylko szukając rozwiązania konkretnego
								problemu, ale także po to, by poszerzyć swoją wiedzę.</p>
						</div>
						<div class="card-footer">
							<small class="text-muted"><a
								href="https://developer.salesforce.com/docs" target="_blank">Salesforce
									Documentation</a></small>
						</div>
					</div>
					<div class="card">
						<img src="img/youtube.jpg" class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">YouTube</h5>
							<p class="card-text">Jeśli bardziej przemawia do Ciebie
								wiedza przekazywana w formie nagrań wideo, warto przeszukać
								zasoby oferowane przez YouTube. Można tu znaleźć nie tylko
								filmiki dotyczące nauki Saleforce'a, ale też m.in. informacje na
								temat ścieżki kariery. Można zacząć np. od 9-godzinnego nagrania
								Salesforce oferowanego przez Edureka.</p>
						</div>
						<div class="card-footer">
							<small class="text-muted"><a
								href="https://www.youtube.com/watch?v=I3Dk3i4GpU8&t=11s&ab_channel=edureka%21"
								target="_blank">Salesforce Full Course</a></small>
						</div>
					</div>
				</div>
			</div>
	</section>



	<%@include file="all_components/footer.jsp"%>
</body>
</html>
