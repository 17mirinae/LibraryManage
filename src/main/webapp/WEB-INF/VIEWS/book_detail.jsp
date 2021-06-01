<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html lang="en">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>MINGW's Library</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="/assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" type="text/css" />
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="../css/styles.css" rel="stylesheet" />
</head>

<body>
	<c var="bookDTO" items="${bookDTO}"> <!-- Responsive navbar-->
	<nav class="navbar navbar-expand-lg bg-light static-top ">
		<div class="container px-5">
			<a class="navbar-brand" href="/">MINGW's Library</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
					<!--                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Home</a></li>-->
					<li class="nav-item"><a class="nav-link"
						href="/member/register">Register</a></li>
					<li class="nav-item"><a class="nav-link" href="/member/login">Login</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Navigation-->
	<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
		<div class="container">
			<a class="btn" style="background-color: #e3f2fd; color: dodgerblue;"
				href="/book/unified_search">자료 검색</a> <a class="btn"
				style="background-color: #e3f2fd; color: dodgerblue;"
				href="#library_register">신청 / 참여</a> <a class="btn"
				style="background-color: #e3f2fd; color: dodgerblue;"
				href="#library_use">도서관 이용</a> <a class="btn"
				style="background-color: #e3f2fd; color: dodgerblue;"
				href="#library_info">도서관 정보</a>
		</div>
	</nav>
	<!-- Product section-->
	<section class="py-5">
		<div class="container px-4 px-lg-5 my-5">
			<div class="row gx-4 gx-lg-5 align-items-center">
				<div class="col-md-6">
					<img class="card-img-top mb-5 mb-md-0"
						src="/bookImageStorage/${bookDTO.bookImage}" alt="..." />
				</div>
				<div class="col-md-6">
					<div class="small mb-1">${bookDTO.bookGenre}</div>
					<h1 class="display-5 fw-bolder">${bookDTO.bookTitle}</h1>
					<div class="fs-5 mb-5">
						<span class="">도서 재고 : </span> <span>${bookDTO.bookCount}</span>
					</div>
					<p class="lead">
						저자 : ${bookDTO.bookAuthor}<br /> 출판사 : ${bookDTO.bookPublisher}<br />${bookDTO.bookSummary}
					</p>
					<div class="d-flex">

						<button class="btn btn-outline-dark flex-shrink-0" type="button">
							<i class="bi-cart-fill me-1"></i> 대여 하기
						</button>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Related items section-->
	<section class="py-5 bg-light">
		<div class="container px-4 px-lg-5 mt-5">
			<h2 class="fw-bolder mb-4">관련 장르 도서</h2>
			<div
				class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Product image-->
						<img class="card-img-top" src="/assets/img/2.jpg" alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">도서 제목</h5>
								<!-- Product price-->
								재고 : 1권
							</div>
						</div>
						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="#">도서 상세</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col mb-5">
					<div class="card h-100">
						<!-- 대여 횟수가 많을 경우 이렇게 해보는게 어떨까-->
						<div class="badge bg-dark text-white position-absolute"
							style="top: 0.5rem; right: 0.5rem">HIT!</div>
						<!-- Product image-->
						<img class="card-img-top" src="/assets/img/2.jpg" alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">도서 제목 2</h5>
								<!--                                 Product reviews
                                <div class="d-flex justify-content-center small text-warning mb-2">
                                    <div class="bi-star-fill"></div>
                                    <div class="bi-star-fill"></div>
                                    <div class="bi-star-fill"></div>
                                    <div class="bi-star-fill"></div>
                                    <div class="bi-star-fill"></div>
                                </div>-->
								<!-- Product price-->
								<!--                                <span class="text-muted text-decoration-line-through">$20.00</span>-->
								재고 : 1권
							</div>
						</div>
						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="#">도서 상세</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col mb-5">
					<div class="card h-100">
						<!--                         Sale badge
                        <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>-->
						<!-- Product image-->
						<img class="card-img-top" src="/assets/img/2.jpg" alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">도서 제목 3</h5>
								<!-- Product price-->
								<!--                                <span class="text-muted text-decoration-line-through">$50.00</span>-->
								재고 : 1권
							</div>
						</div>
						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="#">도서 상세</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Product image-->
						<img class="card-img-top" src="/assets/img/2.jpg" alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">도서 제목 4</h5>
								<!-- 도서 평점 기능은 시간이 많이 남으면 해보자-->
								<!--
                                <div class="d-flex justify-content-center small text-warning mb-2">
                                    <div class="bi-star-fill"></div>
                                    <div class="bi-star-fill"></div>
                                    <div class="bi-star-fill"></div>
                                    <div class="bi-star-fill"></div>
                                    <div class="bi-star-fill"></div>
                                </div>
-->
								<!-- Product 설명-->
								<!--대충 여따 뭐 다른 거 박아도 되긴함-->
								재고 : 1권
							</div>
						</div>
						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="#">도서 상세</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Footer--> <footer class="footer bg-light">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 h-100 text-center text-lg-start my-auto">
					<ul class="list-inline mb-2">
						<li class="list-inline-item"><a href="#!">About</a></li>
						<li class="list-inline-item">⋅</li>
						<li class="list-inline-item"><a href="#!">Contact</a></li>
						<li class="list-inline-item">⋅</li>
						<li class="list-inline-item"><a href="#!">Terms of Use</a></li>
						<li class="list-inline-item">⋅</li>
						<li class="list-inline-item"><a href="#!">Privacy Policy</a></li>
					</ul>
					<p class="text-muted small mb-4 mb-lg-0">&copy; MinGW's
						Library 2021. All Rights Reserved.</p>
				</div>
				<div class="col-lg-6 h-100 text-center text-lg-end my-auto">
					<ul class="list-inline mb-0">
						<li class="list-inline-item me-4"><a href="#!"><i
								class="bi-facebook fs-3"></i></a></li>
						<li class="list-inline-item me-4"><a href="#!"><i
								class="bi-twitter fs-3"></i></a></li>
						<li class="list-inline-item"><a href="#!"><i
								class="bi-instagram fs-3"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer> <!-- Bootstrap core JS--> <script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS--> <script type="text/javascript"
		src="../js/scripts.js"></script> <!--    사용자 정의 추가용--> <script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha/js/bootstrap.min.js"></script>
	<!--    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha/css/bootstrap.min.css" rel="stylesheet" />-->

	<!--        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous">-->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js"></script>
	</c>
</body>

</html>