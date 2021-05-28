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

<title>DHLN - Home</title>
<!-- Template CSS -->
<c:url var="url" value="/" />
<link rel="stylesheet" href="${url}views/ASM/css/style-starter.css">
<!-- Template CSS -->
<link
	href="//fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;1,600&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="${url}views/ASM/css/login.css">




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

							<li class="nav-item active"><a class="nav-link" href="index">Trang
									chủ</a></li>
							<li class="nav-item"><a class="nav-link" href="about">Giới
									thiệu</a></li>
							<li class="nav-item"><a class="nav-link" href="genre">Thể
									loại</a></li>

							<li class="nav-item"><a class="nav-link" href="contact">Liên
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
								<a href="admin-user">Quản trị</a>
							</c:if>
						</c:otherwise>
					</c:choose>
					<!-- //toggle switch for light and dark theme -->
				</div>
		</nav>
		<!--//nav-->
	</header>
	<!-- //header -->
	<!-- main-slider -->
	<section class="w3l-main-slider position-relative" id="home">
		<div class="companies20-content">
			<div class="owl-one owl-carousel owl-theme">
				<div class="item">
					<li>
						<div class="slider-info banner-view bg bg2">
							<div class="banner-info">
								<h3>Latest Movie Trailers</h3>
								<p>
									Lorem ipsum dolor sit amet consectetur adipisicing elit.<span
										class="over-para"> Consequuntur hic odio voluptatem
										tenetur consequatur.</span>
								</p>
								<a href="#small-dialog1" class="popup-with-zoom-anim play-view1">
									<span class="video-play-icon"> <span class="fa fa-play"></span>
								</span>
									<h6>Watch Trailer</h6>
								</a>
								<!-- dialog itself, mfp-hide class is required to make dialog hidden -->
								<div id="small-dialog1" class="zoom-anim-dialog mfp-hide">
									<iframe src="https://player.vimeo.com/video/358205676"
										allow="autoplay; fullscreen" allowfullscreen=""></iframe>
								</div>
							</div>
						</div>
					</li>
				</div>
				<div class="item">
					<li>
						<div class="slider-info  banner-view banner-top1 bg bg2">
							<div class="banner-info">
								<h3>Latest Online Movies</h3>
								<p>
									Lorem ipsum dolor sit amet consectetur adipisicing elit.<span
										class="over-para"> Consequuntur hic odio voluptatem
										tenetur consequatur.</span>
								</p>
								<a href="#small-dialog2" class="popup-with-zoom-anim play-view1">
									<span class="video-play-icon"> <span class="fa fa-play"></span>
								</span>
									<h6>Watch Trailer</h6>
								</a>
								<!-- dialog itself, mfp-hide class is required to make dialog hidden -->
								<div id="small-dialog2" class="zoom-anim-dialog mfp-hide">
									<iframe src="https://player.vimeo.com/video/395376850"
										allow="autoplay; fullscreen" allowfullscreen=""></iframe>
								</div>
							</div>
						</div>
					</li>
				</div>
				<div class="item">
					<li>
						<div class="slider-info banner-view banner-top2 bg bg2">
							<div class="banner-info">
								<h3>Latest Movie Trailers</h3>
								<p>
									Lorem ipsum dolor sit amet consectetur adipisicing elit.<span
										class="over-para"> Consequuntur hic odio voluptatem
										tenetur consequatur.</span>
								</p>
								<a href="#small-dialog3" class="popup-with-zoom-anim play-view1">
									<span class="video-play-icon"> <span class="fa fa-play"></span>
								</span>
									<h6>Watch Trailer</h6>
								</a>
								<!-- dialog itself, mfp-hide class is required to make dialog hidden -->
								<div id="small-dialog3" class="zoom-anim-dialog mfp-hide">
									<iframe src="https://player.vimeo.com/video/389969665"
										allow="autoplay; fullscreen" allowfullscreen=""></iframe>
								</div>
							</div>
						</div>
					</li>
				</div>
				<div class="item">
					<li>
						<div class="slider-info banner-view banner-top3 bg bg2">
							<div class="banner-info">
								<h3>Latest Online Movies</h3>
								<p>
									Lorem ipsum dolor sit amet consectetur adipisicing elit.<span
										class="over-para"> Consequuntur hic odio voluptatem
										tenetur consequatur.</span>
								</p>
								<a href="#small-dialog4" class="popup-with-zoom-anim play-view1">
									<span class="video-play-icon"> <span class="fa fa-play"></span>
								</span>
									<h6>Watch Trailer</h6>
								</a>
								<!-- dialog itself, mfp-hide class is required to make dialog hidden -->
								<div id="small-dialog4" class="zoom-anim-dialog mfp-hide">
									<iframe src="https://player.vimeo.com/video/323491174"
										allow="autoplay; fullscreen" allowfullscreen=""></iframe>
								</div>
							</div>
						</div>
					</li>
				</div>
			</div>
		</div>
	</section>
	<!-- //banner-slider-->
	<!-- main-slider -->
	<!--grids-sec1-->


	<section class="w3l-grids">
		<div class="grids-main py-5">
			<div class="container py-lg-3">
				<div class="headerhny-title">
					<div class="w3l-title-grids">
						<div class="headerhny-left">
							<h3 class="hny-title">Phim phổ biến</h3>
						</div>
						<div class="headerhny-right text-lg-right">
							<h4>
								<a class="show-title" href="genre">Hiển thị tất cả</a>
							</h4>
						</div>
					</div>
				</div>

				<div class="w3l-populohny-grids">






					<c:forEach var="item" items="${form}">

						<div class="item vhny-grid">
							<div class="box16">
								<a href="watch-movie">
									<figure>
										<img class="img-fluid"
											src="${url}views/ASM/images/${item.poster}" alt="">
									</figure>
									<div class="box-content">
										<h3 class="title">
											<a href="watch-movie/${item.id}">${item.title}</a>
										</h3>
										<h4>
											<span class="post"><span class="fa fa-clock-o">
											</span> ${item.views}</span> <span class="post fa fa-heart text-right"></span>
										</h4>
									</div> <span class="fa fa-play video-icon" aria-hidden="true"></span>
								</a>
							</div>
						</div>

					</c:forEach>








				</div>


			</div>
		</div>
	</section>


	<!--//grids-sec1-->
	<!--grids-sec2-->
	<section class="w3l-grids">
		<div class="grids-main py-5">
			<div class="container py-lg-3">
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
						<div class="box16 mb-0">
							<a href="genre">
								<figure>
									<img class="img-fluid" src="${url}views/ASM/images/m3.jpg"
										alt="">
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
							<a class="title-gd" href="genre">${item.title}</a>
						</h3>
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit</p>
						<div class="button-center text-center mt-4">
							<a href="watch-movie" class="btn watch-button">Xem ngay</a>
						</div>
					</div>

				</div>

			</div>
	</section>
	<!--grids-sec2-->
	<!--mid-slider -->
	<section class="w3l-mid-slider position-relative">
		<div class="companies20-content">
			<div class="owl-mid owl-carousel owl-theme">
				<div class="item">
					<li>
						<div class="slider-info mid-view bg bg2">
							<div class="container">
								<div class="mid-info">
									<span class="sub-text">Phim hài</span>
									<h3>Jumanji: The Next Level</h3>
									<p>2019 - Phim hài/Hành động - 2 Tiếng 3 phút</p>
									<a class="watch" href="watch-movie"><span
										class="fa fa-play" aria-hidden="true"></span> Xem Trailer</a>
								</div>
							</div>
						</div>
					</li>
				</div>
				<div class="item">
					<li>
						<div class="slider-info mid-view mid-top1 bg bg2">
							<div class="container">
								<div class="mid-info">
									<span class="sub-text">Phiêu lưu</span>
									<h3>Dolittle</h3>
									<p>2020 - Gia đình/Phiêu lưu - 1 Tiếng 41 phút</p>
									<a class="watch" href="watch-movie"><span
										class="fa fa-play" aria-hidden="true"></span> Xem Trailer</a>
								</div>
							</div>
						</div>
					</li>
				</div>
				<div class="item">
					<li>
						<div class="slider-info mid-view mid-top2 bg bg2">
							<div class="container">
								<div class="mid-info">
									<span class="sub-text">Hành động</span>
									<h3>Bad Boys for Life</h3>
									<p>2020 - Phim hài/Hành động - 2 Tiếng 4 phút</p>
									<a class="watch" href="watch-movie"><span
										class="fa fa-play" aria-hidden="true"></span> Xem Trailer</a>
								</div>
							</div>
						</div>
					</li>
				</div>
			</div>
		</div>
	</section>
	<!-- //mid-slider-->
	<!--/tabs-->
	<section class="w3l-albums py-5" id="projects">
		<div class="container py-lg-4">
			<div class="row">
				<div class="col-lg-12 mx-auto">
					<!--Horizontal Tab-->
					<div id="parentHorizontalTab">
						<ul class="resp-tabs-list hor_1">
							<li>Phim gần đây</li>
							<li>Phim phổ biến</li>
							<li>Phim xu hướng</li>
							<div class="clear"></div>
						</ul>
						<div class="resp-tabs-container hor_1">
							<div class="albums-content">
								<div class="row">
									<!--/set1-->
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="watch-movie"> <img
													src="${url}views/ASM/images/m6.jpg" class="img-fluid"
													alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div>
												</a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="watch-movie">Long
													Shot</a>
												<h4>
													<span class="post"><span class="fa fa-clock-o">
													</span> 2 Tiếng 4 phút </span> <span
														class="post fa fa-heart text-right"></span>
												</h4>
											</div>
										</div>

									</div>
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="watch-movie"><img
													src="${url}views/ASM/images/m5.jpg" class="img-fluid"
													alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="watch-movie">Jumanji</a>
												<h4>
													<span class="post"><span class="fa fa-clock-o">
													</span> 2 Tiếng 4 phút </span> <span
														class="post fa fa-heart text-right"></span>
												</h4>
											</div>
										</div>

									</div>
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="watch-movie"><img
													src="${url}views/ASM/images/m4.jpg" class="img-fluid"
													alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="watch-movie">Little
													Women</a>
												<h4>
													<span class="post"><span class="fa fa-clock-o">
													</span> 2 Tiếng 4 phút </span> <span
														class="post fa fa-heart text-right"></span>
												</h4>
											</div>
										</div>

									</div>
									<!--//set1-->
									<!--/set1-->
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="watch-movie"><img
													src="${url}views/ASM/images/m1.jpg" class="img-fluid"
													alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="watch-movie">Rocketman</a>
												<h4>
													<span class="post"><span class="fa fa-clock-o">
													</span> 2 Tiếng 4 phút </span> <span
														class="post fa fa-heart text-right"></span>
												</h4>
											</div>
										</div>

									</div>
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="watch-movie"><img
													src="${url}views/ASM/images/m2.jpg" class="img-fluid"
													alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="watch-movie">Doctor
													Sleep</a>
												<h4>
													<span class="post"><span class="fa fa-clock-o">
													</span> 2 Tiếng 4 phút </span> <span
														class="post fa fa-heart text-right"></span>
												</h4>
											</div>
										</div>

									</div>
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="watch-movie"><img
													src="${url}views/ASM/images/m3.jpg" class="img-fluid"
													alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="watch-movie">Knives
													Out</a>
												<h4>
													<span class="post"><span class="fa fa-clock-o">
													</span> 2 Tiếng 4 phút </span> <span
														class="post fa fa-heart text-right"></span>
												</h4>
											</div>
										</div>

									</div>
									<!--//set1-->
									<!--/set1-->
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="watch-movie"><img
													src="${url}views/ASM/images/n1.jpg" class="img-fluid"
													alt="author image"> <span
													class="fa fa-play video-icon" aria-hidden="true"></span> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="watch-movie">No Time
													to Die</a>
												<h4>
													<span class="post"><span class="fa fa-clock-o">
													</span> 2 Tiếng 4 phút </span> <span
														class="post fa fa-heart text-right"></span>
												</h4>
											</div>
										</div>

									</div>
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="watch-movie"><img
													src="${url}views/ASM/images/n2.jpg" class="img-fluid"
													alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="watch-movie">Mulan</a>
												<h4>
													<span class="post"><span class="fa fa-clock-o">
													</span> 2 Tiếng 4 phút </span> <span
														class="post fa fa-heart text-right"></span>
												</h4>
											</div>
										</div>

									</div>
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="watch-movie"><img
													src="${url}views/ASM/images/n3.jpg" class="img-fluid"
													alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="watch-movie">Free Guy</a>
												<h4>
													<span class="post"><span class="fa fa-clock-o">
													</span> 2 Tiếng 4 phút </span> <span
														class="post fa fa-heart text-right"></span>
												</h4>
											</div>
										</div>

									</div>
									<!--//set1-->
								</div>
							</div>
							<div class="albums-content">
								<div class="row">
									<!--/set1-->
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="watch-movie"><img
													src="${url}views/ASM/images/m1.jpg" class="img-fluid"
													alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="watch-movie">Rocketman</a>
												<h4>
													<span class="post"><span class="fa fa-clock-o">
													</span> 2 Tiếng 4 phút </span> <span
														class="post fa fa-heart text-right"></span>
												</h4>
											</div>
										</div>

									</div>
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="watch-movie"><img
													src="${url}views/ASM/images/m2.jpg" class="img-fluid"
													alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="watch-movie">Doctor
													Sleep</a>
												<h4>
													<span class="post"><span class="fa fa-clock-o">
													</span> 2 Tiếng 4 phút </span> <span
														class="post fa fa-heart text-right"></span>
												</h4>
											</div>
										</div>

									</div>
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="watch-movie"><img
													src="${url}views/ASM/images/m3.jpg" class="img-fluid"
													alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="watch-movie">Knives
													Out</a>
												<h4>
													<span class="post"><span class="fa fa-clock-o">
													</span> 2 Tiếng 4 phút </span> <span
														class="post fa fa-heart text-right"></span>
												</h4>
											</div>
										</div>

									</div>
									<!--//set1-->
									<!--/set2-->
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="watch-movie"><img
													src="${url}views/ASM/images/m7.jpg" class="img-fluid"
													alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="watch-movie">Frozen 2</a>
												<h4>
													<span class="post"><span class="fa fa-clock-o">
													</span> 2 Tiếng 4 phút </span> <span
														class="post fa fa-heart text-right"></span>
												</h4>
											</div>
										</div>

									</div>
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="watch-movie"><img
													src="${url}views/ASM/images/m8.jpg" class="img-fluid"
													alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="watch-movie">Toy
													Story 4</a>
												<h4>
													<span class="post"><span class="fa fa-clock-o">
													</span> 2 Tiếng 4 phút </span> <span
														class="post fa fa-heart text-right"></span>
												</h4>
											</div>
										</div>

									</div>
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="watch-movie"><img
													src="${url}views/ASM/images/m9.jpg" class="img-fluid"
													alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="watch-movie">Joker</a>
												<h4>
													<span class="post"><span class="fa fa-clock-o">
													</span> 2 Tiếng 4 phút </span> <span
														class="post fa fa-heart text-right"></span>
												</h4>
											</div>
										</div>

									</div>
									<!--//set2-->
								</div>
							</div>
							<div class="albums-content">
								<div class="row">
									<!--/set3-->
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="watch-movie"><img
													src="${url}views/ASM/images/m7.jpg" class="img-fluid"
													alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="watch-movie">Frozen 2</a>
												<h4>
													<span class="post"><span class="fa fa-clock-o">
													</span> 2 Tiếng 4 phút </span> <span
														class="post fa fa-heart text-right"></span>
												</h4>
											</div>
										</div>

									</div>
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="watch-movie"><img
													src="${url}views/ASM/images/m8.jpg" class="img-fluid"
													alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="watch-movie">Toy
													Story 4</a>
												<h4>
													<span class="post"><span class="fa fa-clock-o">
													</span> 2 Tiếng 4 phút </span> <span
														class="post fa fa-heart text-right"></span>
												</h4>
											</div>
										</div>

									</div>
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="watch-movie"><img
													src="${url}views/ASM/images/m9.jpg" class="img-fluid"
													alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="watch-movie">Joker</a>
												<h4>
													<span class="post"><span class="fa fa-clock-o">
													</span> 2 Tiếng 4 phút </span> <span
														class="post fa fa-heart text-right"></span>
												</h4>
											</div>
										</div>

									</div>
									<!--//set3-->
									<!--/set3-->
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="watch-movie"><img
													src="${url}views/ASM/images/m10.jpg" class="img-fluid"
													alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="watch-movie">Alita</a>
												<h4>
													<span class="post"><span class="fa fa-clock-o">
													</span> 2 Tiếng 4 phút </span> <span
														class="post fa fa-heart text-right"></span>
												</h4>
											</div>
										</div>

									</div>
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="watch-movie"><img
													src="${url}views/ASM/images/m11.jpg" class="img-fluid"
													alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="watch-movie">The Lego</a>
												<h4>
													<span class="post"><span class="fa fa-clock-o">
													</span> 2 Tiếng 4 phút </span> <span
														class="post fa fa-heart text-right"></span>
												</h4>
											</div>
										</div>

									</div>
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="watch-movie"><img
													src="${url}views/ASM/images/m12.jpg" class="img-fluid"
													alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="watch-movie">The
													Hustle</a>
												<h4>
													<span class="post"><span class="fa fa-clock-o">
													</span> 2 Tiếng 4 phút </span> <span
														class="post fa fa-heart text-right"></span>
												</h4>
											</div>
										</div>

									</div>
									<!--//set3-->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- //tabs-->
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
										src="${url}views/ASM/images/banner1.jpg" alt=""></a>
								</div>
								<div class="col-md-3 col-6 footer-img mb-lg-0 mb-4">
									<a href="genre"><img class="img-fluid"
										src="${url}views/ASM/images/banner2.jpg" alt=""></a>
								</div>
								<div class="col-md-3 col-6 footer-img mb-lg-0 mb-4">
									<a href="genre"><img class="img-fluid"
										src="${url}views/ASM/images/banner3.jpg" alt=""></a>
								</div>
								<div class="col-md-3 col-6 footer-img mb-lg-0 mb-4">
									<a href="genre"><img class="img-fluid"
										src="${url}views/ASM/images/banner4.jpg" alt=""></a>
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
										<li><a href="#">Đăng nhập</a></li>
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
									href="https://w3layouts.com"></a>
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
<!-- responsive tabs -->
<script src="${url}views/ASM/js/jquery-1.9.1.min.js"></script>
<script src="${url}views/ASM/js/easyResponsiveTabs.js"></script>
<script type="${url}views/ASM/text/javascript">
	$(document).ready(function() {
		//Horizontal Tab
		$('#parentHorizontalTab').easyResponsiveTabs({
			type : 'default', //Types: default, vertical, accordion
			width : 'auto', //auto or any width like 600px
			fit : true, // 100% fit in a container
			tabidentify : 'hor_1', // The tab groups identifier
			activate : function(event) { // Callback function if tab is switched
				var $tab = $(this);
				var $info = $('#nested-tabInfo');
				var $name = $('span', $info);
				$name.text($tab.text());
				$info.show();
			}
		});
	});
</script>
<!-- //responsive tabs -->
<!--/theme-change-->
<script src="${url}views/ASM/js/theme-change.js"></script>
<!-- //theme-change-->
<script src="${url}views/ASM/js/owl.carousel.js"></script>
<!-- script for banner slider-->
<script>
	$(document).ready(function() {
		$('.owl-one').owlCarousel({
			stagePadding : 280,
			loop : true,
			margin : 20,
			nav : true,
			responsiveClass : true,
			autoplay : true,
			autoplayTimeout : 5000,
			autoplaySpeed : 1000,
			autoplayHoverPause : false,
			responsive : {
				0 : {
					items : 1,
					stagePadding : 40,
					nav : false
				},
				480 : {
					items : 1,
					stagePadding : 60,
					nav : true
				},
				667 : {
					items : 1,
					stagePadding : 80,
					nav : true
				},
				1000 : {
					items : 1,
					nav : true
				}
			}
		})
	})
</script>
<!-- //script -->
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
					items : 5,
					nav : true
				}
			}
		})
	})
</script>
<!-- //script -->
<!-- /mid-script -->
<script>
	$(document).ready(function() {
		$('.owl-mid').owlCarousel({
			loop : true,
			margin : 0,
			nav : false,
			responsiveClass : true,
			autoplay : true,
			autoplayTimeout : 5000,
			autoplaySpeed : 1000,
			autoplayHoverPause : false,
			responsive : {
				0 : {
					items : 1,
					nav : false
				},
				480 : {
					items : 1,
					nav : false
				},
				667 : {
					items : 1,
					nav : true
				},
				1000 : {
					items : 1,
					nav : true
				}
			}
		})
	})
</script>
<!-- //mid-script -->

<!-- script for owlcarousel -->
<!-- Template JavaScript -->
<script src="${url}views/ASM/js/jquery.magnific-popup.min.js"></script>
<script>
	$(document).ready(function() {
		$('.popup-with-zoom-anim').magnificPopup({
			type : 'inline',

			fixedContentPos : false,
			fixedBgPos : true,

			overflowY : 'auto',

			closeBtnInside : true,
			preloader : false,

			midClick : true,
			removalDelay : 300,
			mainClass : 'my-mfp-zoom-in'
		});

		$('.popup-with-move-anim').magnificPopup({
			type : 'inline',

			fixedContentPos : false,
			fixedBgPos : true,

			overflowY : 'auto',

			closeBtnInside : true,
			preloader : false,

			midClick : true,
			removalDelay : 300,
			mainClass : 'my-mfp-slide-bottom'
		});
	});
</script>
<!--//-->
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

<script src="${url}views/ASM/js/bootstrap.min.js"></script>