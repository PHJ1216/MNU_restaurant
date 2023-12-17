<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>


<html lang="en" xmlns:th="http://www.thymeleaf.org">


<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<title>GUMCCIMA</title>
<meta content="" name="description">
<meta content="" name="keywords">


<link href="../resources/assets/img/apple-touch-icon2.png" rel="icon">
<link href="../resources/assets/img/apple-touch-icon.png"
	rel="apple-touch-icon">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">
<link href="../resources/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="../resources/assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="../resources/assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="../resources/assets/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="../resources/assets/vendor/remixicon/remixicon.css"
	rel="stylesheet">
<link href="../resources/assets/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">
<link href="../resources/assets/css/style.css" rel="stylesheet">


</head>

<body>

	<!-- ======= 타이틀  ======= -->
	<section id="hero">
		<div class="hero-container">
			<h1>굼찌마에 오신 것을 환영합니다!</h1>
			<h2>국립목포대학교의 로컬 맛집 탐방 같이!!!</h2>
			<a href="#about" class="btn-get-started scrollto">가보시죠~~!!!</a>
		</div>
	</section>
	<!-- 타이틀  -->

	<!-- ======= 헤더 쪽  ======= -->
	<header id="header" class="d-flex align-items-center ">
		<div
			class="container-fluid d-flex align-items-center justify-content-lg-between">

			<h1 class="logo me-auto me-lg-0">
				<a href="index.html"> 굼찌마 </a>
			</h1>


			<nav id="navbar" class="navbar order-last order-lg-0">
				<ul>
					<li><a class="nav-link scrollto active" href="#hero">Home</a></li>
					<li><a class="nav-link scrollto" href="#about">지도</a></li>
					<li><a class="nav-link scrollto " href="#portfolio">전체 통합
							게시판 </a></li>
					<li><a class="nav-link scrollto" href="#team">팀 소개 </a></li>


				</ul>
				<i class="bi bi-list mobile-nav-toggle"></i>
			</nav>
			<!-- .navbar -->



			<div class="header-social-links d-flex align-items-center">

				<sec:authorize access="!isAuthenticated()">
					<a href='/board/customLogin' class="btn-get-started scrollto">
						로그인 </a>
					<a href='/board/customSignup' class="btn-get-started scrollto">
						회원가입 </a>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
					<a href='/board/customLogout' class="btn-get-started scrollto">
						로그아웃 </a>
				</sec:authorize>
				<a href='#' class="btn-get-started scrollto">마이페이지 </a>
			</div>

		</div>
	</header>
	<!-- End Header -->

	<main id="main">

		<!-- ======= 지도 GOOGLE API ======= -->
		<section id="about" class="about">
			<div class="container">

				<div class="section-title">
					<h2>맛집 지도</h2>
					<p>쉽게! 빠르게! 정확하게! 맛집 위치를 찾아보고 확인해보세요!</p>
				</div>


				<div class="row content">
					<div class="col-lg-12">


						<div id="map-canvas" style="height: 600px"></div>

					</div>
				</div>
			</div>
		</section>
		<!-- ======= 지도 GOOGLE API ======= -->

		<!-- =======음식 카테고리 카운 ======= -->
		<section id="counts" class="counts">
			<div class="container">

				<div class="row counters">

					<div class="col-lg-3 col-6 text-center">
						<span data-purecounter-start="0" data-purecounter-end="9"
							data-purecounter-duration="1" class="purecounter"></span>
						<h3>한식</h3>
					</div>

					<div class="col-lg-3 col-6 text-center">
						<span data-purecounter-start="0" data-purecounter-end="4"
							data-purecounter-duration="1" class="purecounter"></span>
						<h3>중식</h3>
					</div>

					<div class="col-lg-3 col-6 text-center">
						<span data-purecounter-start="0" data-purecounter-end="15"
							data-purecounter-duration="1" class="purecounter"></span>
						<h3>패스트푸드</h3>
					</div>

					<div class="col-lg-3 col-6 text-center">
						<span data-purecounter-start="0" data-purecounter-end="6"
							data-purecounter-duration="1" class="purecounter"></span>
						<h3>카페</h3>
					</div>

				</div>

			</div>
		</section>
		<!-- =======음식 카테고리 카운터  ======= -->



		<!-- ============굼찌마 이펙트 ============ -->
		<section id="clients" class="clients section-bg">
			<div class="container">

				<div class="row">

					<div
						class="col-lg-12 col-md-12 col-12 d-flex align-items-center justify-content-center">
						<img src="../resources/assets/img/logo/logo.png" class="img-fluid"
							alt="">
					</div>

				</div>

			</div>
		</section>
		<!-- ============굼찌마 이펙트 ============ -->


		<!-- ================= 먹잘알 게시판  ====================== -->
		<section id="testimonials" class="testimonials section-bg">
			<div class="container">




				<!-- ======= Portfolio Section ======= -->
				<section id="portfolio" class="portfolio">
					<div class="container">

						<div class="section-title">
							<h2>전체 게시판</h2>
							<p>서로 가까운 사람들 끼리 같이 시켜먹어서 배달비를 아껴 보아요!</p>
							<p>누가누가 더 맛있게 먹는지! 숨겨진 맛집은 어디에 있는지! 서로서로 공유해서 함께 즐겨봐요!!!</p>
						</div>


						<div class="row">
							<div class="col-lg-12">
								<h1 class="page-header">전체 게시판</h1>
							</div>
							<!-- /.col-lg-12 -->
						</div>
						<!-- /.row -->

						<div class="row">
							<div class="col-lg-12">
								<div class="panel panel-default">
									<div class="panel-heading">
										<a class="btn btn-outline-primary" href="/board/register"
											role="button">게시물 등록</a>
									</div>

									<!-- /.panel-heading -->
									<div class="panel-body">
										<table class="table table-striped table-bordered table-hover">
											<thead>
												<tr>
													<th>#번호</th>
													<th>제목</th>
													<th>작성자</th>
													<th>작성일</th>
													<th>수정일</th>
													<!-- <th>board_category</th> -->
												</tr>
											</thead>

											<c:forEach items="${list}" var="board">

												<tr>
													<td><c:out value="${board.bno}" /></td>
													<td><a class='move'
														href='<c:out value="${board.bno}"/>'> <c:out
																value="${board.title}" /> <b>[ <c:out
																	value="${board.replyCnt}" /> ]
														</b>
													</a></td>
													<td><c:out value="${board.writer}" /></td>
													<td><fmt:formatDate pattern="yyyy-MM-dd"
															value="${board.regdate}" /></td>
													<td><fmt:formatDate pattern="yyyy-MM-dd"
															value="${board.updateDate}" /></td>
													<%-- <td><c:out value="${board.board_category}" /></td> --%>
												</tr>

											</c:forEach>

										</table>

										<div class='row'>
											<div class="col-lg-12">

												<form id='searchForm' action="/board/index" method='get'>
													<select name='type'>
														<option value=""
															<c:out value="${pageMaker.cri.type == null?'selected':''}"/>>--</option>
														<option value="T"
															<c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>제목</option>
														<option value="C"
															<c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>내용</option>
														<option value="W"
															<c:out value="${pageMaker.cri.type eq 'W'?'selected':''}"/>>작성자</option>
														<option value="TC"
															<c:out value="${pageMaker.cri.type eq 'TC'?'selected':''}"/>>제목
															or 내용</option>
														<option value="TW"
															<c:out value="${pageMaker.cri.type eq 'TW'?'selected':''}"/>>제목
															or 작성자</option>
														<option value="TWC"
															<c:out value="${pageMaker.cri.type eq 'TWC'?'selected':''}"/>>제목
															or 내용 or 작성자</option>
													</select> <input type='text' name='keyword'
														value='<c:out value="${pageMaker.cri.keyword}"/>' /> <input
														type='hidden' name='pageNum'
														value='<c:out value="${pageMaker.cri.pageNum}"/>' /> <input
														type='hidden' name='amount'
														value='<c:out value="${pageMaker.cri.amount}"/>' />
													<button class='btn btn-default'>Search</button>
												</form>
											</div>
										</div>


													


										<div class='pull-right'>
					
					<ul class="pagination">

						<c:if test="${pageMaker.prev}">
							<li class="paginate_button previous"><a
								href="${pageMaker.startPage -1}">Previous</a></li>
						</c:if>

						<c:forEach var="num" begin="${pageMaker.startPage}"
							end="${pageMaker.endPage}">
							<li class="paginate_button  ${pageMaker.cri.pageNum == num ? "active":""} ">
								<a href="${num}">${num}</a>
							</li>
						</c:forEach>

						<c:if test="${pageMaker.next}">
							<li class="paginate_button next"><a
								href="${pageMaker.endPage +1 }">Next</a></li>
						</c:if>


					</ul>
				</div>
 <%-- 
										<div class='d-flex justify-content-end'>
											<nav aria-label="Page navigation">
												<ul class="pagination">

													<c:if test="${pageMaker.prev}">
														<li class="page-item"><a class="page-link"
															href="${pageMaker.startPage - 1}" aria-label="Previous">
																<span aria-hidden="true">&laquo;</span>
														</a></li>
													</c:if>

													<c:forEach var="num" begin="${pageMaker.startPage}"
														end="${pageMaker.endPage}">
														<li
															class="page-item ${pageMaker.cri.pageNum == num ? "active" : ""}">
															<a class="page-link" href="${num}">${num}</a>
														</li>
													</c:forEach>
													
													<c:if test="${pageMaker.next}">
														<li class="page-item"><a class="page-link"
															href="${pageMaker.endPage + 1}" aria-label="Next"> <span
																aria-hidden="true">&raquo;</span>
														</a></li>
													</c:if>

												</ul>
											</nav>
										</div> --%>
										<!--  end Pagination -->
									</div>

									<form id='actionForm' action="/board/index" method='get'>
										<input type='hidden' name='pageNum'
											value='${pageMaker.cri.pageNum}'> <input
											type='hidden' name='amount' value='${pageMaker.cri.amount}'>

										<input type='hidden' name='type'
											value='<c:out value="${ pageMaker.cri.type }"/>'> <input
											type='hidden' name='keyword'
											value='<c:out value="${ pageMaker.cri.keyword }"/>'>


									</form>


									<!-- Modal  추가 -->
									<div class="modal fade" id="myModal" tabindex="-1"
										role="dialog" aria-labelledby="myModalLabel"
										aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal"
														aria-hidden="true">&times;</button>
													<h4 class="modal-title" id="myModalLabel">Modal title</h4>
												</div>
												<div class="modal-body">처리가 완료되었습니다.</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-default"
														data-dismiss="modal">Close</button>
													<button type="button" class="btn btn-primary">Save
														changes</button>
												</div>
											</div>
											<!-- /.modal-content -->
										</div>
										<!-- /.modal-dialog -->
									</div>
									<!-- /.modal -->


								</div>
								<!--  end panel-body -->
							</div>
							<!-- end panel -->
						</div>
					</div>
			</div>
		</section>
		<!-- ================= 먹잘알 게시판  ====================== -->


		<!-- =========================== 팀 소개  =================== -->
		<section id="team" class="team section-bg">
			<div class="container">

				<div class="section-title">
					<h2>팀 소개</h2>
					<p>손현승 교수님의 정보시스템구축 강의에서 팀프로젝트로 참여한 모든 학생입니다.</p>
					<p>굼찌마 웹 정보 제공 시스템을 이용해주셔서 감사합니다!</p>
				</div>

				<div class="row">

					<div class="col-lg-3 col-md-6 d-flex align-items-stretch">
						<div class="member">
							<div class="member-img">
								<img src="../resources/assets/img/team/team-1.jpg"
									class="img-fluid" alt="">
								<div class="social">

									<a href=""><i class="bi bi-facebook"></i></a> <a href=""><i
										class="bi bi-instagram"></i></a> <a
										href="https://github.com/PHJ1216"><i class="bi bi-github"></i></a>
								</div>
							</div>
							<div class="member-info">
								<h4>박현준</h4>
								<span> Project Manager </span>
							</div>
						</div>
					</div>

					<div class="col-lg-3 col-md-6 d-flex align-items-stretch">
						<div class="member">
							<div class="member-img">
								<img src="../resources/assets/img/team/team-2.jpg"
									class="img-fluid" alt="">
								<div class="social">

									<a href=""><i class="bi bi-facebook"></i></a> <a href=""><i
										class="bi bi-instagram"></i></a> <a
										href="https://github.com/rlawnsgud"><i
										class="bi bi-github"></i></a>
								</div>
							</div>
							<div class="member-info">
								<h4>김준형</h4>
								<span> System Engineer 1 </span>
							</div>
						</div>
					</div>

					<div class="col-lg-3 col-md-6 d-flex align-items-stretch">
						<div class="member">
							<div class="member-img">
								<img src="../resources/assets/img/team/team-3.jpg"
									class="img-fluid" alt="">
								<div class="social">

									<a href=""><i class="bi bi-facebook"></i></a> <a href=""><i
										class="bi bi-instagram"></i></a> <a
										href="https://github.com/tmdtn0916"><i
										class="bi bi-github"></i></a>
								</div>
							</div>
							<div class="member-info">
								<h4>한승수</h4>
								<span> System Engineer 2 </span>
							</div>
						</div>
					</div>

					<div class="col-lg-3 col-md-6 d-flex align-items-stretch">
						<div class="member">
							<div class="member-img">
								<img src="../resources/assets/img/team/team-4.jpg"
									class="img-fluid" alt="">
								<div class="social">

									<a href=""><i class="bi bi-facebook"></i></a> <a href=""><i
										class="bi bi-instagram"></i></a> <a
										href="https://github.com/wnflqldis55"><i
										class="bi bi-github"></i></a>
								</div>
							</div>
							<div class="member-info">
								<h4>명다은</h4>
								<span> Quality Assurnace </span>
							</div>
						</div>
					</div>

				</div>

			</div>
		</section>
		<!-- =========================== 팀 소개  =================== -->

	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer">

		<div class="footer-top">

			<div class="container">

				<div class="row  justify-content-center">
					<div class="col-lg-6">
						<h3>GUMCCIMA</h3>
						<p>굼찌마 사이트에 방문해주셔서 감사합니다.</p>
					</div>
				</div>

				<div class="row footer-newsletter justify-content-center">
					<div class="col-lg-6">
						<form action="" method="post">
							<input type="email" name="email" placeholder="Enter your Email"><input
								type="submit" value="Subscribe">
						</form>
					</div>
				</div>

				<div class="social-links">
					<a href="#" class="twitter"><i class="bx bxl-twitter"></i></a> <a
						href="#" class="facebook"><i class="bx bxl-facebook"></i></a> <a
						href="#" class="instagram"><i class="bx bxl-instagram"></i></a> <a
						href="#" class="google-plus"><i class="bx bxl-skype"></i></a> <a
						href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
				</div>

			</div>
		</div>

		<div class="container footer-bottom clearfix">

			<div class="credits">
				<!-- All the links in the footer should remain intact. -->
				<!-- You can delete the links only if you purchased the pro version. -->
				<!-- Licensing information: https://bootstrapmade.com/license/ -->
				<!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/valera-free-bootstrap-theme/ -->
				Designed by <strong> 정보시스템구축 C TEAM</strong> </a>
			</div>
		</div>
	</footer>
	<!-- End Footer -->

	<div id="preloader"></div>
	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script
		src="../resources/assets/vendor/purecounter/purecounter_vanilla.js"></script>
	<script
		src="../resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="../resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script
		src="../resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="../resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="../resources/assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="../resources/assets/js/main.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document)
			.ready(
					function() {

						var result = '<c:out value="${result}"/>';

						checkModal(result);

						history.replaceState({}, null, null);

						function checkModal(result) {

							if (result === '' || history.state) {
								return;
							}

							if (parseInt(result) > 0) {
								$(".modal-body").html(
										"게시글 " + parseInt(result)
												+ " 번이 등록되었습니다.");
							}

							$("#myModal").modal("show");
						}

						$("#regBtn").on("click", function() {

							self.location = "/board/register";

						});

						var actionForm = $("#actionForm");

						$(".paginate_button a").on(
								"click",
								function(e) {

									e.preventDefault();

									console.log('click');

									actionForm.find("input[name='pageNum']")
											.val($(this).attr("href"));
									actionForm.submit();
								});

						$(".move")
								.on(
										"click",
										function(e) {

											e.preventDefault();
											actionForm
													.append("<input type='hidden' name='bno' value='"
															+ $(this).attr(
																	"href")
															+ "'>");
											actionForm.attr("action",
													"/board/get");
											actionForm.submit();

										});

						var searchForm = $("#searchForm");

						$("#searchForm button").on(
								"click",
								function(e) {

									if (!searchForm.find("option:selected")
											.val()) {
										alert("검색종류를 선택하세요");
										return false;
									}

									if (!searchForm.find(
											"input[name='keyword']").val()) {
										alert("키워드를 입력하세요");
										return false;
									}

									searchForm.find("input[name='pageNum']")
											.val("1");
									e.preventDefault();

									searchForm.submit();

								});

					});
	
	
	
	
	
</script>
<!--gmap js 임포트-->
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js?sensor=true"></script>

<!--javascript 소스코드-->
<script type="text/javascript">
	
    function initialize() {
        var map;
        var markers = [];

        // 배열로 여러 장소의 좌표값을 설정합니다.
        var locations = [ 
        	
        	{ lat: 34.915222, lng: 126.438138, name: '청와', address: '전라남도 무안군 청계면 승달산길 103-2번지' },
            { lat: 34.914418, lng: 126.436987, name: '남한산성', address: '전라남도 무안군 청계면 승달산길 102-1번지' },
            { lat: 34.910551, lng: 126.433999, name: '아몬드 식당', address: '전라남도 무안군 청계면 승달산길 201-52번지' },
            { lat: 34.910438, lng: 126.433983, name: '카츠림', address: '전라남도 무안군 청계면 승달산길 104-33번지' },
            { lat: 34.910336, lng: 126.433640, name: '충만치킨 & 피자마루', address: '전라남도 무안군 청계면 승달산길 302-11번지' },
            { lat: 34.910255, lng: 126.433588, name: '고미', address: '전라남도 무안군 청계면 승달산길 101-5번지' },
            { lat: 34.910180, lng: 126.433495, name: '레어비어', address: '전라남도 무안군 청계면 승달산길 205-28번지' },
            { lat: 34.910019, lng: 126.433550, name: '신전 떡볶이', address: '전라남도 무안군 청계면 승달산길 107-9번지' },
            { lat: 34.9099136, lng: 126.4331332, name: '도쿄라멘3900', address: '전라남도 무안군 청계면 승달산길 208-46번지' },
            { lat: 34.9098663, lng: 126.4330301, name: '대패세끼', address: '전라남도 무안군 청계면 승달산길 110-15번지' },
            { lat: 34.9097746, lng: 126.4329624, name: '해바라기', address: '전라남도 무안군 청계면 승달산길 303-2번지' },
            { lat: 34.9094015, lng: 126.4335358, name: '한솥 도시락', address: '전라남도 무안군 청계면 승달산길 115-17번지' },
            { lat: 34.9093761, lng: 126.4329027, name: '통큰 돈까스', address: '전라남도 무안군 청계면 승달산길 306-8번지' },
            { lat: 34.9097284, lng: 126.4328664, name: '꺼벙이 식당', address: '전라남도 무안군 청계면 승달산길 117-24번지' },
            { lat: 34.9098117, lng: 126.4327817, name: '얌샘 김밥', address: '전라남도 무안군 청계면 승달산길 208-7번지' },
            { lat: 34.9097342, lng: 126.4324860, name: '이모네', address: '전라남도 무안군 청계면 승달산길 119-30번지' },
            { lat: 34.9097304, lng: 126.4323865, name: '소년컵밥', address: '전라남도 무안군 청계면 승달산길 301-14번지' },
            { lat: 34.9098305, lng: 126.4320012, name: '도스마스', address: '전라남도 무안군 청계면 승달산길 121-35번지' },
            { lat: 34.9095549, lng: 126.4318095, name: '청기와 감자탕', address: '전라남도 무안군 청계면 승달산길 302-20번지' },
            { lat: 34.9098317, lng: 126.4317769, name: '롯데리아', address: '전라남도 무안군 청계면 승달산길 124-42번지' },
            { lat: 34.9103065, lng: 126.4317952, name: '나주진곰탕', address: '전라남도 무안군 청계면 승달산길 306-15번지' },
            { lat: 34.9100429, lng: 126.4318385, name: '콩짜장', address: '전라남도 무안군 청계면 승달산길 126-6번지' },
            { lat: 34.9099591, lng: 126.4312263, name: '피자나라치킨공주', address: '전라남도 무안군 청계면 승달산길 309-19번지' },
            { lat: 34.9095483, lng: 126.4309122, name: '청춘 대패', address: '전라남도 무안군 청계면 승달산길 130-25번지' },
            { lat: 34.9092871, lng: 126.4309655, name: '중국관', address: '전라남도 무안군 청계면 승달산길 304-30번지' },
            { lat: 34.9100000, lng: 126.4313889, name: '대림식당', address: '전라남도 무안군 청계면 승달산길 132-38번지' },
            { lat: 34.9098692, lng: 126.4304052, name: '대박 마라탕', address: '전라남도 무안군 청계면 승달산길 305-10번지' },
            { lat: 34.9098458, lng: 126.4302446, name: '옐로우번', address: '전라남도 무안군 청계면 승달산길 134-44번지' },
            { lat: 34.9095970, lng: 126.4297387, name: '고기짬뽕', address: '전라남도 무안군 청계면 승달산길 308-23번지' },
            { lat: 34.9097100, lng: 126.4311128, name: 'BHC 치킨', address: '전라남도 무안군 청계면 승달산길 136-51번지' }
            
        ];

        var mapOptions = {
            zoom: 17, <!--지도 확대, 축소 정도 설정 -->
            center: new google.maps.LatLng(34.908520, 126.434221),  
            mapTypeId: google.maps.MapTypeId.ROADMAP,
          
            
        };

        map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

        for (var i = 0; i < locations.length; i++) {
            var location = locations[i];

            var marker = new google.maps.Marker({
                position: new google.maps.LatLng(location.lat, location.lng),
                map: map,
                title: location.name,
            });

            var contentString = '<p style="line-height: 30px;color:black;">' + location.name + '</p><p>' + location.address + '</p><p>Rating: ' + generateStars(location.rating) + '</p>';
            var infowindow = new google.maps.InfoWindow({
                content: contentString,
            });

            google.maps.event.addListener(marker, 'click', (function (marker, content) {
                return function () {
                    infowindow.setContent(content);
                    infowindow.open(map, marker);
                };
            })(marker, contentString));

            markers.push(marker);
        }
    }

    function generateStars() {
        var stars = '';
        for (var i = 0; i < 5; i++) {
            stars += '★';
        }
        return stars;
    }

    google.maps.event.addDomListener(window, 'load', initialize);
</script>

<!-- Google API Key 값을 생성하여 입력하세요. -->
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBnEzfmuzLn3JUC2eQErfcs8qelcFfTxTA&ca]lback=initMap&v=weekly"
	defer></script>
<!-- <script async defer src="https://maps.googleapis.com/maps/api/js?KEY=AIzaSyBnEzfmuzLn3JUC2eQErfcs8qelcFfTxTA&callback=initMap"></script> -->

</html>