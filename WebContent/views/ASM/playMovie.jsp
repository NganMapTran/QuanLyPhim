<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
-->
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>DHLN - Watch Movie</title>
<!-- Template CSS -->
<link rel="stylesheet" href="../views/ASM/css/style-starter.css">
<!-- Template CSS -->
<link
	href="//fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;1,600&display=swap"
	rel="stylesheet">
<!-- Template CSS -->
<link rel="stylesheet" href="../views/ASM/css/login.css">
</head>

<body>

	<!-- header -->
	<header id="site-header" class="w3l-header fixed-top">
		<!--/nav-->
		<nav
			class="navbar navbar-expand-lg navbar-light fill px-lg-0 py-0 pxs-3">
			<div class="container">
				<h1>
					<a class="navbar-brand" href="views/ASM/index"><span
						class="fa fa-play icon-log" aria-hidden="true"></span> DHLN </a>
				</h1>

				<!--  if logo is image enable this
				<a class="navbar-brand" href="#index"> <img src="image-path"
					alt="Your logo" title="Your logo" style="height: 35px;" />
				</a>-->

				<button class="navbar-toggler collapsed" type="button"
					data-toggle="collapse" data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<!-- <span class="navbar-toggler-icon"></span> -->
					<span class="fa icon-expand fa-bars"></span> <span
						class="fa icon-close fa-times"></span>
				</button>



				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<div class="collapse navbar-collapse" id="navbarSupportedContent">





						<ul class="navbar-nav ml-auto">
							<li class="nav-item "><a class="nav-link" href="index">Trang
									chủ</a></li>
							<li class="nav-item "><a class="nav-link" href="about">Giới
									thiệu</a></li>
							<li class="nav-item"><a class="nav-link" href="genre">Thể
									loại</a></li>

							<li class="nav-item "><a class="nav-link" href="contact">Liên
									hệ</a></li>
									<li class="nav-item"><a class="nav-link" href="login">Đăng
									nhập</a></li>
							<li class="nav-item"><a class="nav-link" href="edit-profile">Tài
							khoản</a></li>
							<li class="nav-item "><a class="nav-link"
								href="list?userID=${sessionScope.user.id}">Danh sách</a></li>

						</ul>




						<!--/search-right-->
						<!--/search-right-->
						<div class="search-right">
							<a href="#search" class="btn search-hny mr-lg-3 mt-lg-0 mt-4"
								title="search">Tìm kiếm <span class="fa fa-search ml-3"
								aria-hidden="true"></span></a>
							<!-- search popup -->
							<div id="search" class="pop-overlay">
								<div class="popup">
									<form action="#" method="post" class="search-box">
										<input type="search" placeholder="Search your Keyword"
											name="search" required="required" autofocus="">
										<button type="submit" class="btn">
											<span class="fa fa-search" aria-hidden="true"></span>
										</button>
									</form>
									<div class="browse-items">
										<h3 class="hny-title two mt-md-5 mt-4">Duyệt qua tất
											cả:</h3>
										<ul class="search-items">
											<li><a href="genre">Hành động</a></li>
											<li><a href="genre">Kịch</a></li>
											<li><a href="genre">Gia đình</a></li>
											<li><a href="genre">Hài</a></li>
											<li><a href="genre">Lãng mạng</a></li>
											<li><a href="genre">Kinh di</a></li>
										</ul>
									</div>
								</div>
								<a class="close" href="#close">x</a>
							</div>
							<!-- /search popup -->
							<!--/search-right-->
						</div>


					</div>
					<!-- toggle switch for light and dark theme -->
					<div class="mobile-position">
						<nav class="navigation">
							<div class="theme-switch-wrapper">
								<label class="theme-switch" for="checkbox"> <input
									type="checkbox" id="checkbox">
									<div class="mode-container">
										<i class="gg-sun"></i> <i class="gg-moon"></i>
									</div>
								</label>
							</div>
						</nav>
					</div>


					<c:choose>
						<c:when test="${empty sessionScope.user}">
							<a>Welcome you</a>
						</c:when>
						<c:otherwise>
							<a>Welcome ${sessionScope.user.id}</a>
							&nbsp
							<a href="sign-out"> Đăng xuất</a>
							<c:if test="${sessionScope.user.admin}">
								<a href="/fpoly/admin/home/index">Quản trị</a>
							</c:if>
						</c:otherwise>
					</c:choose>
					<!-- //toggle switch for light and dark theme -->
				</div>
		</nav>
		<!--//nav-->
	</header>
	<!-- //header -->
	<!--/breadcrumbs -->
	<div class="w3l-breadcrumbs">
		<nav id="breadcrumbs" class="breadcrumbs">
			<div class="container page-wrapper">
				<a href="index">Trang chủ</a> » <span class="breadcrumb_last"
					aria-current="page">Xem phim</span>
			</div>
		</nav>
	</div>
	<!--//breadcrumbs -->
	<!-- /about-->




	<div class="w3l-ab-grids py-5">
		<div class="container py-lg-4">
			<div class="row ab-grids-sec align-items-center">
				<div class="embed-responsive embed-responsive-16by9">
					${video.urlVideo}</div>
			</div>
			<br>
			<h3 style="color: red; font-weight: bold;">${video.title}</h3>
			<h4>${video.description}</h4>
			<br/><br/>
			<form method="post">
				<input name="idVideo" type="hidden" value="${video.id}"> <input
					name="idUser" type="hidden" value="${sessionScope.user.id}">


				<button formaction="like?idUser=${sessionScope.user.id}"
					class="btn btn-outline-primary">Like</button>
					<button formaction="contact"
					class="btn btn-outline-success"> Share</button>
					<!-- 
				<button formaction="share?idUser=${sessionScope.user.id}"
					class="btn btn-outline-success">Share</button>
					 -->
			</form>
		</div>
	</div>
	<!-- //about-->
	<!--grids-sec1-->
	<section class="w3l-team" id="team">
		<div class="grids-main py-5">
			<div class="container py-lg-4">
				<div class="headerhny-title">
					<h3 class="hny-title">Diễn viên trong phim</h3>
				</div>
				<div class="owl-team owl-carousel owl-theme">
					<div class="item vhny-grid">
						<div class="d-grid team-info">
							<div class="column position-relative">
								<a href="#url"><img src="../views/ASM/images/a1.jpg" alt=""
									class="img-fluid rounded team-image" /></a>
							</div>
							<div class="column text-center">
								<h3 class="name-pos">
									<a href="#url">Dwayne johnson</a>
								</h3>

								<div class="social">
									<a href="#facebook" class="facebook"><span
										class="fa fa-facebook" aria-hidden="true"></span></a> <a
										href="#twitter" class="twitter"><span
										class="fa fa-twitter" aria-hidden="true"></span></a> <a
										href="#linkedin" class="linkedin"><span
										class="fa fa-linkedin" aria-hidden="true"></span></a>
								</div>
							</div>
						</div>

					</div>
					<div class="item vhny-grid">
						<div class="box16">
							<div class="d-grid team-info">
								<div class="column position-relative">
									<a href="#url"><img src="../views/ASM/images/a2.jpg" alt=""
										class="img-fluid rounded team-image" /></a>
								</div>
								<div class="column text-center">
									<h3 class="name-pos">
										<a href="#url">Karen Gillan</a>
									</h3>

									<div class="social">
										<a href="#facebook" class="facebook"><span
											class="fa fa-facebook" aria-hidden="true"></span></a> <a
											href="#twitter" class="twitter"><span
											class="fa fa-twitter" aria-hidden="true"></span></a> <a
											href="#linkedin" class="linkedin"><span
											class="fa fa-linkedin" aria-hidden="true"></span></a>
									</div>
								</div>
							</div>
						</div>

					</div>
					<div class="item vhny-grid">
						<div class="box16">
							<div class="d-grid team-info">
								<div class="column position-relative">
									<a href="#url"><img src="../views/ASM/images/a3.jpg" alt=""
										class="img-fluid rounded team-image" /></a>
								</div>
								<div class="column text-center">
									<h3 class="name-pos">
										<a href="#url">Chris Hemsworth</a>
									</h3>

									<div class="social">
										<a href="#facebook" class="facebook"><span
											class="fa fa-facebook" aria-hidden="true"></span></a> <a
											href="#twitter" class="twitter"><span
											class="fa fa-twitter" aria-hidden="true"></span></a> <a
											href="#linkedin" class="linkedin"><span
											class="fa fa-linkedin" aria-hidden="true"></span></a>
									</div>
								</div>
							</div>
						</div>

					</div>
					<div class="item vhny-grid">
						<div class="box16">
							<div class="d-grid team-info">
								<div class="column position-relative">
									<a href="#url"><img src="../views/ASM/images/a4.jpg" alt=""
										class="img-fluid rounded team-image" /></a>
								</div>
								<div class="column text-center">
									<h3 class="name-pos">
										<a href="#url">Elton John</a>
									</h3>

									<div class="social">
										<a href="#facebook" class="facebook"><span
											class="fa fa-facebook" aria-hidden="true"></span></a> <a
											href="#twitter" class="twitter"><span
											class="fa fa-twitter" aria-hidden="true"></span></a> <a
											href="#linkedin" class="linkedin"><span
											class="fa fa-linkedin" aria-hidden="true"></span></a>
									</div>
								</div>
							</div>
						</div>

					</div>
					<div class="item vhny-grid">
						<div class="box16">
							<div class="d-grid team-info">
								<div class="column position-relative">
									<a href="#url"><img src="../views/ASM/images/a5.jpg" alt=""
										class="img-fluid rounded team-image" /></a>
								</div>
								<div class="column text-center">
									<h3 class="name-pos">
										<a href="#url">Liu Yifei</a>
									</h3>
									<div class="social">
										<a href="#facebook" class="facebook"><span
											class="fa fa-facebook" aria-hidden="true"></span></a> <a
											href="#twitter" class="twitter"><span
											class="fa fa-twitter" aria-hidden="true"></span></a> <a
											href="#linkedin" class="linkedin"><span
											class="fa fa-linkedin" aria-hidden="true"></span></a>
									</div>
								</div>
							</div>
						</div>

					</div>
					<div class="item vhny-grid">
						<div class="box16">
							<div class="d-grid team-info">
								<div class="column position-relative">
									<a href="#url"><img src="../views/ASM/images/a3.jpg" alt=""
										class="img-fluid rounded team-image" /></a>
								</div>
								<div class="column text-center">
									<h3 class="name-pos">
										<a href="#url">Chris Hemsworth</a>
									</h3>

									<div class="social">
										<a href="#facebook" class="facebook"><span
											class="fa fa-facebook" aria-hidden="true"></span></a> <a
											href="#twitter" class="twitter"><span
											class="fa fa-twitter" aria-hidden="true"></span></a> <a
											href="#linkedin" class="linkedin"><span
											class="fa fa-linkedin" aria-hidden="true"></span></a>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>



		</div>
	</section>
	<!--//grids-sec1-->
	<!--/testimonials-->
	<section class="w3l-clients" id="clients">
		<!-- /grids -->
		<div class="cusrtomer-layout py-5">
			<div class="container py-lg-4">
				<div class="headerhny-title">
					<h3 class="hny-title">Đánh giá về về phim</h3>
				</div>
				<!-- /grids -->
				<div class="testimonial-width">
					<div class="owl-clients owl-carousel owl-theme mb-lg-5">
						<div class="item">
							<div class="testimonial-content">
								<div class="testimonial">
									<blockquote>
										<q>Lorem ipsum dolor sit amet consectetur adipisicing
											elit. Velit beatae laudantium voluptate rem ullam dolore!.</q>
									</blockquote>
									<div class="testi-des">
										<div class="test-img">
											<img src="../views/ASM/images/team1.jpg" class="img-fluid"
												alt="/">
										</div>
										<div class="peopl align-self">
											<h3>Johnson smith</h3>
											<p class="indentity">Washington</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimonial-content">
								<div class="testimonial">
									<blockquote>
										<q>Lorem ipsum dolor sit amet consectetur adipisicing
											elit. Velit beatae laudantium voluptate rem ullam dolore!.</q>
									</blockquote>
									<div class="testi-des">
										<div class="test-img">
											<img src="../views/ASM/images/team2.jpg" class="img-fluid"
												alt="/">
										</div>
										<div class="peopl align-self">
											<h3>Alexander leo</h3>
											<p class="indentity">Washington</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimonial-content">
								<div class="testimonial">
									<blockquote>
										<q>Lorem ipsum dolor sit amet consectetur adipisicing
											elit. Velit beatae laudantium voluptate rem ullam dolore!.</q>
									</blockquote>
									<div class="testi-des">
										<div class="test-img">
											<img src="../views/ASM/images/team3.jpg" class="img-fluid"
												alt="/">
										</div>
										<div class="peopl align-self">
											<h3>Roy Linderson</h3>
											<p class="indentity">Washington</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimonial-content">
								<div class="testimonial">
									<blockquote>
										<q>Lorem ipsum dolor sit amet consectetur adipisicing
											elit. Velit beatae laudantium voluptate rem ullam dolore!.</q>
									</blockquote>
									<div class="testi-des">
										<div class="test-img">
											<img src="../views/ASM/images/team4.jpg" class="img-fluid"
												alt="/">
										</div>
										<div class="peopl align-self">
											<h3>Mike Thyson</h3>
											<p class="indentity">Washington</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimonial-content">
								<div class="testimonial">
									<blockquote>
										<q>Lorem ipsum dolor sit amet consectetur adipisicing
											elit. Velit beatae laudantium voluptate rem ullam dolore!.</q>
									</blockquote>
									<div class="testi-des">
										<div class="test-img">
											<img src="../views/ASM/images/team2.jpg" class="img-fluid"
												alt="/">
										</div>
										<div class="peopl align-self">
											<h3>Laura gill</h3>
											<p class="indentity">Washington</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimonial-content">
								<div class="testimonial">
									<blockquote>
										<q>Lorem ipsum dolor sit amet consectetur adipisicing
											elit. Velit beatae laudantium voluptate rem ullam dolore!.</q>
									</blockquote>
									<div class="testi-des">
										<div class="test-img">
											<img src="../views/ASM/images/team3.jpg" class="img-fluid"
												alt="/">
										</div>
										<div class="peopl align-self">
											<h3>Smith Johnson</h3>
											<p class="indentity">Washington</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /grids -->
		</div>
		<!-- //grids -->
	</section>
	<!--//testimonials-->
	<!--grids-sec2-->
	<section class="w3l-grids">
		<div class="grids-main py-5">
			<div class="container py-lg-4">
				<div class="headerhny-title">
					<div class="w3l-title-grids">
						<div class="headerhny-left">
							<h3 class="hny-title">Phim mới</h3>
						</div>
						<div class="headerhny-right text-lg-right">
							<h4>
								<a class="show-title" href="genre">Hiển thị tất cả</a>
							</h4>
						</div>
					</div>
				</div>
				<div class="owl-three owl-carousel owl-theme">
					<div class="item vhny-grid">
						<div class="box16">
							<a href="genre">
								<figure>
									<img class="img-fluid" src="../views/ASM/images/m12.jpg" alt="">
								</figure>
								<div class="box-content">
									<h4>
										<span class="post"><span class="fa fa-clock-o">
										</span> 2 Tiếng 4 phút </span> <span class="post fa fa-heart text-right"></span>
									</h4>
								</div> <span class="fa fa-play video-icon" aria-hidden="true"></span>
							</a>
						</div>
						<h3>
							<a class="title-gd" href="genre">The Hustle</a>
						</h3>
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit</p>
						<div class="button-center text-center mt-4">
							<a href="genre" class="btn watch-button">Xem ngay</a>
						</div>

					</div>
					<div class="item vhny-grid">
						<div class="box16">
							<a href="genre">
								<figure>
									<img class="img-fluid" src="../views/ASM/images/m11.jpg" alt="">
								</figure>
								<div class="box-content">

									<h4>
										<span class="post"><span class="fa fa-clock-o">
										</span> 2 Hr 4min </span> <span class="post fa fa-heart text-right"></span>
									</h4>
								</div> <span class="fa fa-play video-icon" aria-hidden="true"></span>
							</a>
						</div>
						<h3>
							<a class="title-gd" href="genre">The Lego</a>
						</h3>
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit</p>
						<div class="button-center text-center mt-4">
							<a href="genre" class="btn watch-button">Xem ngay</a>
						</div>
					</div>
					<div class="item vhny-grid">
						<div class="box16">
							<a href="genre">
								<figure>
									<img class="img-fluid" src="../views/ASM/images/m9.jpg" alt="">
								</figure>
								<div class="box-content">

									<h4>
										<span class="post"><span class="fa fa-clock-o">
										</span> 2 Hr 4min </span> <span class="post fa fa-heart text-right"></span>
									</h4>
								</div> <span class="fa fa-play video-icon" aria-hidden="true"></span>
							</a>
						</div>
						<h3>
							<a class="title-gd" href="genre">Joker </a>
						</h3>
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit</p>
						<div class="button-center text-center mt-4">
							<a href="genre" class="btn watch-button">Xem ngay</a>
						</div>
					</div>
					<div class="item vhny-grid">
						<div class="box16">
							<a href="genre">
								<figure>
									<img class="img-fluid" src="../views/ASM/images/m8.jpg" alt="">
								</figure>
								<div class="box-content">

									<h4>
										<span class="post"><span class="fa fa-clock-o">
										</span> 2 Hr 4min </span> <span class="post fa fa-heart text-right"></span>
									</h4>
								</div> <span class="fa fa-play video-icon" aria-hidden="true"></span>
							</a>
						</div>
						<h3>
							<a class="title-gd" href="genre">Toy story 4</a>
						</h3>
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit</p>
						<div class="button-center text-center mt-4">
							<a href="genre" class="btn watch-button">Xem ngay</a>
						</div>

					</div>
					<div class="item vhny-grid">
						<div class="box16">
							<a href="genre">
								<figure>
									<img class="img-fluid" src="../views/ASM/images/m1.jpg" alt="">
								</figure>
								<div class="box-content">

									<h4>
										<span class="post"><span class="fa fa-clock-o">
										</span> 2 Hr 4min </span> <span class="post fa fa-heart text-right"></span>
									</h4>
								</div> <span class="fa fa-play video-icon" aria-hidden="true"></span>
							</a>
						</div>
						<h3>
							<a class="title-gd" href="genre">Rocketman</a>
						</h3>
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit</p>
						<div class="button-center text-center mt-4">
							<a href="genre" class="btn watch-button">Xem ngay</a>
						</div>
					</div>
					<div class="item vhny-grid">
						<div class="box16">
							<a href="genre">
								<figure>
									<img class="img-fluid" src="../views/ASM/images/m2.jpg" alt="">
								</figure>
								<div class="box-content">

									<h4>
										<span class="post"><span class="fa fa-clock-o">
										</span> 2 Hr 4min </span> <span class="post fa fa-heart text-right"></span>
									</h4>
								</div> <span class="fa fa-play video-icon" aria-hidden="true"></span>
							</a>
						</div>
						<h3>
							<a class="title-gd" href="genre">Doctor Sleep</a>
						</h3>
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit</p>
						<div class="button-center text-center mt-4">
							<a href="genre" class="btn watch-button">Xem ngay</a>
						</div>
					</div>
				</div>
			</div>

		</div>
	</section>
	<!--grids-sec2-->
	<!-- footer-66 -->
	<footer class="w3l-footer">
		<section class="footer-inner-main">
			<div class="footer-hny-grids py-5">
				<div class="container py-lg-4">
					<div class="text-txt">
						<div class="right-side">
							<div class="row footer-about">
								<div class="col-md-3 col-6 footer-img mb-lg-0 mb-4">
									<a href="genre"><img class="img-fluid"
										src="../views/ASM/images/banner1.jpg" alt=""></a>
								</div>
								<div class="col-md-3 col-6 footer-img mb-lg-0 mb-4">
									<a href="genre"><img class="img-fluid"
										src="../views/ASM/images/banner2.jpg" alt=""></a>
								</div>
								<div class="col-md-3 col-6 footer-img mb-lg-0 mb-4">
									<a href="genre"><img class="img-fluid"
										src="../views/ASM/images/banner3.jpg" alt=""></a>
								</div>
								<div class="col-md-3 col-6 footer-img mb-lg-0 mb-4">
									<a href="genre"><img class="img-fluid"
										src="../views/ASM/images/banner4.jpg" alt=""></a>
								</div>
							</div>
							<div class="row footer-links">


								<div class="col-md-3 col-sm-6 sub-two-right mt-5">
									<h6>Phim</h6>
									<ul>
										<li><a href="#">Phim chiếu rạp</a></li>
										<li><a href="#">Phim phổ biến</a></li>
										<li><a href="#">Phim Tiếng anh</a></li>
										<li><a href="#">Phim sắp ra mắt</a></li>
										<li><a href="#">Phim xu hướng</a></li>

									</ul>
								</div>
								<div class="col-md-3 col-sm-6 sub-two-right mt-5">
									<h6>Thông tin</h6>
									<ul>
										<li><a href="index">Trang chủ</a></li>
										<li><a href="about">Giới thiệu</a></li>
										<li><a href="login">Đăng nhập</a></li>
										<li><a href="contact">Liên hệ</a></li>
									</ul>
								</div>
								<div class="col-md-3 col-sm-6 sub-two-right mt-5">
									<h6>Địa điểm</h6>
									<ul>
										<li><a href="genre">Việt Nam</a></li>
										<li><a href="genre">Pháp</a></li>
										<li><a href="genre">Đài Loan</a></li>
										<li><a href="genre">Hoa Kỳ</a></li>
										<li><a href="genre">Hàn Quốc</a></li>
										<li><a href="genre">Vương quốc Anh</a></li>
									</ul>
								</div>
								<div class="col-md-3 col-sm-6 sub-two-right mt-5">
									<h6>Bản tin</h6>
									<form action="#" class="subscribe mb-3" method="post">
										<input type="email" name="email"
											placeholder="Địa chỉ email của bạn" required="">
										<button>
											<span class="fa fa-envelope-o"></span>
										</button>
									</form>
									<p>Nhập email của bạn và nhận tin tức, cập nhật mới nhất và
										ưu đãi đặc biệt từ chúng tôi.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</div>
			<div class="below-section">
				<div class="container">
					<div class="copyright-footer">
						<div class="columns text-lg-left">
							<p>
								&copy; 2020 ProShowz. All rights reserved | Designed by <a
									href="https://w3layouts.com">W3layouts</a>
							</p>
						</div>

						<ul class="social text-lg-right">
							<li><a href="#facebook"><span class="fa fa-facebook"
									aria-hidden="true"></span></a></li>
							<li><a href="#linkedin"><span class="fa fa-linkedin"
									aria-hidden="true"></span></a></li>
							<li><a href="#twitter"><span class="fa fa-twitter"
									aria-hidden="true"></span></a></li>
							<li><a href="#google"><span class="fa fa-google-plus"
									aria-hidden="true"></span></a></li>

						</ul>
					</div>
				</div>
			</div>
			<!-- copyright -->
			<!-- move top -->
			<button onclick="topFunction()" id="movetop" title="Go to top">
				<span class="fa fa-arrow-up" aria-hidden="true"></span>
			</button>
			<script>
				// When the user scrolls down 20px from the top of the document, show the button
				window.onscroll = function() {
					scrollFunction()
				};

				function scrollFunction() {
					if (document.body.scrollTop > 20
							|| document.documentElement.scrollTop > 20) {
						document.getElementById("movetop").style.display = "block";
					} else {
						document.getElementById("movetop").style.display = "none";
					}
				}

				// When the user clicks on the button, scroll to the top of the document
				function topFunction() {
					document.body.scrollTop = 0;
					document.documentElement.scrollTop = 0;
				}
			</script>
			<!-- /move top -->

		</section>
	</footer>
	<!--//footer-66 -->
</body>

</html>
<script src="../views/ASM/js/jquery-3.3.1.min.js"></script>
<!-- stats -->
<script src="../views/ASM/js/jquery.waypoints.min.js"></script>
<script src="../views/ASM/js/jquery.countup.js"></script>
<script>
	$('.counter').countUp();
</script>
<!-- //stats -->
<!--/theme-change-->
<script src="../views/ASM/js/theme-change.js"></script>
<!-- //theme-change-->
<script src="../views/ASM/js/owl.carousel.js"></script>
<!-- script for banner slider-->
<script>
	$(document).ready(function() {
		$('.owl-team').owlCarousel({
			loop : true,
			margin : 20,
			nav : false,
			responsiveClass : true,
			autoplay : false,
			autoplayTimeout : 5000,
			autoplaySpeed : 1000,
			autoplayHoverPause : false,
			responsive : {
				0 : {
					items : 2,
					nav : false
				},
				480 : {
					items : 2,
					nav : true
				},
				667 : {
					items : 3,
					nav : true
				},
				1000 : {
					items : 4,
					nav : true
				}
			}
		})
	})
</script>
<script>
	$(document).ready(function() {
		$('.owl-three').owlCarousel({
			loop : true,
			margin : 20,
			nav : false,
			responsiveClass : true,
			autoplay : true,
			autoplayTimeout : 5000,
			autoplaySpeed : 1000,
			autoplayHoverPause : false,
			responsive : {
				0 : {
					items : 2,
					nav : false
				},
				480 : {
					items : 2,
					nav : true
				},
				667 : {
					items : 3,
					nav : true
				},
				1000 : {
					items : 6,
					nav : true
				}
			}
		})
	})
</script>
<!-- //script -->
<!-- for tesimonials carousel slider -->
<script>
	$(document).ready(function() {
		$(".owl-clients").owlCarousel({
			loop : true,
			margin : 40,
			responsiveClass : true,
			responsive : {
				0 : {
					items : 1,
					nav : true
				},
				736 : {
					items : 2,
					nav : false
				},
				1000 : {
					items : 3,
					nav : true,
					loop : false
				}
			}
		})
	})
</script>
<!-- //script -->
<!-- script for owlcarousel -->
<!-- disable body scroll which navbar is in active -->
<script>
	$(function() {
		$('.navbar-toggler').click(function() {
			$('body').toggleClass('noscroll');
		})
	});
</script>
<!-- disable body scroll which navbar is in active -->

<!--/MENU-JS-->
<script>
	$(window).on("scroll", function() {
		var scroll = $(window).scrollTop();

		if (scroll >= 80) {
			$("#site-header").addClass("nav-fixed");
		} else {
			$("#site-header").removeClass("nav-fixed");
		}
	});

	//Main navigation Active Class Add Remove
	$(".navbar-toggler").on("click", function() {
		$("header").toggleClass("active");
	});
	$(document).on("ready", function() {
		if ($(window).width() > 991) {
			$("header").removeClass("active");
		}
		$(window).on("resize", function() {
			if ($(window).width() > 991) {
				$("header").removeClass("active");
			}
		});
	});
</script>
<!--//MENU-JS-->
<script src="../views/ASM/js/bootstrap.min.js"></script>