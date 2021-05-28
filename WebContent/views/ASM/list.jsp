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
<title>DHLN - List</title>
<!-- Template CSS -->
<c:url var="url" value="/" />
<link rel="stylesheet" href="${url}views/ASM/css/style-starter.css">
<!-- Template CSS -->
<link
	href="//fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;1,600&display=swap"
	rel="stylesheet">
<!-- Template CSS -->
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
							<li class="nav-item "><a class="nav-link" href="index">Trang
									chủ</a></li>
							<li class="nav-item "><a class="nav-link" href="about">Giới
									thiệu</a></li>
							<li class="nav-item"><a class="nav-link" href="genre">Thể
									loại</a></li>

							<li class="nav-item"><a class="nav-link" href="contact">Liên
									hệ</a></li>
									<li class="nav-item"><a class="nav-link" href="login">Đăng
									nhập</a></li>
							<li class="nav-item"><a class="nav-link" href="edit-profile">Tài
							khoản</a></li>
							<li class="nav-item active"><a class="nav-link"
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
					aria-current="page">Giới thiệu</span>
			</div>
		</nav>
	</div>
	<!--//breadcrumbs -->
	<!-- /about-->

	<!-- //about-->
	<!--grids-sec1-->

	<!--//grids-sec1-->
	<!--/testimonials-->

	<!--//testimonials-->
	<!--grids-sec2-->


	<section class="w3l-grids">
		<div class="grids-main py-5">
			<div class="container py-lg-3">
				<div class="headerhny-title">
					<div class="w3l-title-grids">
						<div class="headerhny-left">
							<h3 class="hny-title">Phim yêu thích của bạn</h3>
						</div>
						<div class="headerhny-right text-lg-right">
							<h4>
								<a class="show-title" href="genre">Hiển thị tất cả</a>
							</h4>
						</div>
					</div>
				</div>

				<div class="w3l-populohny-grids">
					<c:forEach var="item" items="${video}">

						<div class="item vhny-grid">
							<div class="box16">
								<a href="watch-movie">
									<figure>
										<img class="img-fluid"
											src="${url}views/ASM/images/${item.poster}" alt="">
									</figure>
									<div class="box-content">
										<h3 class="title">
											<a href="watch-movie/${item.id}">${item.description}</a>
										</h3>
										<h4>
											<span class="post"><span class="fa fa-clock-o">
											</span> ${item.views}</span> <span class="post fa fa-heart text-right"></span>
										</h4>
									</div> <span class="fa fa-play video-icon" aria-hidden="true"></span>
								</a>

							</div>
							
							<br>
							
							<form method="post">
								<input name="idVideo" type="hidden" value="${item.id}">


								<button formaction="unlike?idUser=${sessionScope.user.id}"
									class="btn btn-outline-primary">UnLike</button>
							</form>
						</div>

					</c:forEach>


				</div>


			</div>
		</div>
	</section>

	>

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
										src="views/ASM/images/banner1.jpg" alt=""></a>
								</div>
								<div class="col-md-3 col-6 footer-img mb-lg-0 mb-4">
									<a href="genre"><img class="img-fluid"
										src="views/ASM/images/banner2.jpg" alt=""></a>
								</div>
								<div class="col-md-3 col-6 footer-img mb-lg-0 mb-4">
									<a href="genre"><img class="img-fluid"
										src="views/ASM/images/banner3.jpg" alt=""></a>
								</div>
								<div class="col-md-3 col-6 footer-img mb-lg-0 mb-4">
									<a href="genre"><img class="img-fluid"
										src="views/ASM/images/banner4.jpg" alt=""></a>
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
<script src="views/ASM/js/jquery-3.3.1.min.js"></script>
<!-- stats -->
<script src="views/ASM/js/jquery.waypoints.min.js"></script>
<script src="views/ASM/js/jquery.countup.js"></script>
<script>
	$('.counter').countUp();
</script>
<!-- //stats -->
<!--/theme-change-->
<script src="views/ASM/js/theme-change.js"></script>
<!-- //theme-change-->
<script src="views/ASM/js/owl.carousel.js"></script>
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
<script src="views/ASM/js/bootstrap.min.js"></script>