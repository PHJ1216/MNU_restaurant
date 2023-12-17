<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>



<html lang="en" xmlns:th="http://www.thymeleaf.org">

<style>
.uploadResult {
	width: 100%;
	background-color: gray;
}

.uploadResult ul {
	display: flex;
	flex-flow: row;
	justify-content: center;
	align-items: center;
}

.uploadResult ul li {
	list-style: none;
	padding: 10px;
}

.uploadResult ul li img {
	width: 100px;
}
</style>

<style>
.bigPictureWrapper {
	position: absolute;
	display: none;
	justify-content: center;
	align-items: center;
	top: 0%;
	width: 100%;
	height: 100%;
	background-color: gray;
	z-index: 100;
}

.bigPicture {
	position: relative;
	display: flex;
	justify-content: center;
	align-items: center;
}
</style>


<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

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


	<!-- ======= 헤더 쪽  ======= -->
	<header id="header" class="d-flex align-items-center ">
		<div
			class="container-fluid d-flex align-items-center justify-content-lg-between">


			<a href="/board/index"> <img
				src="../resources/assets/img/logo/logo2.png" alt="로고" height="70px"
				width="400px">
			</a>






			<div class="header-social-links d-flex align-items-center">

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

		<!-- ======= Contact Section ======= -->
		<section id="contact" class="contact">
			<div class="container">

				<div class="section-title"></div>




				<div class="container">

					<div class="section-title">
						<h1>전체 게시판</h1>
						<p>매너있는 게시판 활동 부탁드립니다~~!</p>
					</div>
				</div>


				<div class="row mt-5">

					<div class="col-lg-4">
						<div class="info">



							<div class="address">
								<i class="bi bi-person-circle"></i>
								<h3>사용 이름:</h3>
								<h3>
									<sec:authentication property="principal.username" />
									님
								</h3>
							</div>


						</div>

					</div>

					<div class="col-lg-8 mt-5 mt-lg-0">

						<div class="panel panel-default">
							<div class="section-title">

								<p>7가지 해당되는 게시물을 꼭 지켜주세요!</p>
								<p>1. 광고성 게시물 2. 반사회성 게시물 3. 도배 게시물 4. 비방 게시물 5. 분쟁의 여지가 있는
									게시물 6. 명예훼손 게시물 7. 불법정보 게시물</p>
							</div>
							<div class="panel-heading">
								<h3></h3>
							</div>
							<!-- /.panel-heading -->
							<div class="panel-body">

								<form role="form" action="/board/register" method="post">

									<input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}" />


									<div class="form-group">
										<div class="section-title">
											<h2>카테고리</h2>
											<select class="form-control" name="board_category">
												<option value="option1">food</option>
												<option value="option2">delivery</option>

											</select>
										</div>

									</div>


									<div class="form-group">
										<div class="section-title">
											<h2>게시글 제목</h2>
											<input class="form-control" name='title'>
										</div>

									</div>


									<div class="form-group">
										<div class="section-title">
											<h2>게시글 내용</h2>
											<textarea class="form-control" rows="3" name='content'></textarea>
										</div>

									</div>


									<div style="display: none;" class="form-group">
										<h2>
											<label>Writer</label>
										</h2>
										<input class="form-control" name='writer'
											value='<sec:authentication property="principal.username"/>'
											readonly="readonly">
									</div>



									<button type="submit" class="btn btn-outline-primary">게시글
										등록</button>
									<button type="reset" class="btn btn-outline-primary">글
										리셋</button>
								</form>

							</div>
							<!--  end panel-body -->

						</div>
						<!--  end panel-body -->
					</div>
					<!-- end panel -->
				</div>
				<!-- /.row -->


				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">

							<div class="panel-heading">
								<h2>
									<label>파일 첨부</label>
								</h2>
							</div>
							<!-- /.panel-heading -->
							<div class="panel-body">
								<div class="form-group uploadDiv">
									<input type="file" name='uploadFile' multiple>
								</div>

								<div class='uploadResult'>
									<ul>

									</ul>
								</div>


							</div>
							<!--  end panel-body -->

						</div>
						<!--  end panel-body -->
					</div>
					<!-- end panel -->
				</div>
				<!-- /.row -->
			</div>



		</section>



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


			</div>
		</div>

		<div class="container footer-bottom clearfix">

			<div class="credits">

				Designed by <strong> 정보시스템구축 C Team </strong>
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

</body>

<script>
	$(document)
			.ready(
					function(e) {

						var formObj = $("form[role='form']");

						$("button[type='submit']")
								.on(
										"click",
										function(e) {

											e.preventDefault();

											console.log("submit clicked");

											var str = "";

											$(".uploadResult ul li")
													.each(
															function(i, obj) {

																var jobj = $(obj);

																console
																		.dir(jobj);
																console
																		.log("-------------------------");
																console
																		.log(jobj
																				.data("filename"));

																str += "<input type='hidden' name='attachList["
																		+ i
																		+ "].fileName' value='"
																		+ jobj
																				.data("filename")
																		+ "'>";
																str += "<input type='hidden' name='attachList["
																		+ i
																		+ "].uuid' value='"
																		+ jobj
																				.data("uuid")
																		+ "'>";
																str += "<input type='hidden' name='attachList["
																		+ i
																		+ "].uploadPath' value='"
																		+ jobj
																				.data("path")
																		+ "'>";
																str += "<input type='hidden' name='attachList["
																		+ i
																		+ "].fileType' value='"
																		+ jobj
																				.data("type")
																		+ "'>";

															});

											console.log(str);

											formObj.append(str).submit();

										});

						var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
						var maxSize = 5242880; //5MB

						function checkExtension(fileName, fileSize) {

							if (fileSize >= maxSize) {
								alert("파일 사이즈 초과");
								return false;
							}

							if (regex.test(fileName)) {
								alert("해당 종류의 파일은 업로드할 수 없습니다.");
								return false;
							}
							return true;
						}

						var csrfHeaderName = "${_csrf.headerName}";
						var csrfTokenValue = "${_csrf.token}";

						$("input[type='file']")
								.change(
										function(e) {
											var formData = new FormData();
											var inputFile = $("input[name='uploadFile']");
											var files = inputFile[0].files;
											for (var i = 0; i < files.length; i++) {
												if (!checkExtension(
														files[i].name,
														files[i].size)) {
													return false;
												}
												formData.append("uploadFile",
														files[i]);
											}

											$.ajax({
												url : '/uploadAjaxAction',
												processData : false,
												contentType : false,
												beforeSend : function(xhr) {
													xhr.setRequestHeader(
															csrfHeaderName,
															csrfTokenValue);
												},
												data : formData,
												type : 'POST',
												dataType : 'json',
												success : function(result) {
													console.log(result);
													showUploadResult(result); //업로드 결과 처리 함수 
												}
											}); //$.ajax
										});

						function showUploadResult(uploadResultArr) {

							if (!uploadResultArr || uploadResultArr.length == 0) {
								return;
							}

							var uploadUL = $(".uploadResult ul");

							var str = "";

							$(uploadResultArr)
									.each(
											function(i, obj) {

												/* //image type
												if(obj.image){
												  var fileCallPath =  encodeURIComponent( obj.uploadPath+ "/s_"+obj.uuid +"_"+obj.fileName);
												  str += "<li><div>";
												  str += "<span> "+ obj.fileName+"</span>";
												  str += "<button type='button' data-file=\'"+fileCallPath+"\' data-type='image' class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
												  str += "<img src='/display?fileName="+fileCallPath+"'>";
												  str += "</div>";
												  str +"</li>";
												}else{
												  var fileCallPath =  encodeURIComponent( obj.uploadPath+"/"+ obj.uuid +"_"+obj.fileName);            
												    var fileLink = fileCallPath.replace(new RegExp(/\\/g),"/");
												      
												  str += "<li><div>";
												  str += "<span> "+ obj.fileName+"</span>";
												  str += "<button type='button' data-file=\'"+fileCallPath+"\' data-type='file' class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
												  str += "<img src='/resources/img/attach.png'></a>";
												  str += "</div>";
												  str +"</li>";
												} */
												//image type
												if (obj.image) {
													var fileCallPath = encodeURIComponent(obj.uploadPath
															+ "/s_"
															+ obj.uuid
															+ "_"
															+ obj.fileName);
													str += "<li data-path='"+obj.uploadPath+"'";
			str +=" data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"'"
			str +" ><div>";
													str += "<span> "
															+ obj.fileName
															+ "</span>";
													str += "<button type='button' data-file=\'"+fileCallPath+"\' "
			str += "data-type='image' class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
													str += "<img src='/display?fileName="
															+ fileCallPath
															+ "'>";
													str += "</div>";
													str + "</li>";
												} else {
													var fileCallPath = encodeURIComponent(obj.uploadPath
															+ "/"
															+ obj.uuid
															+ "_"
															+ obj.fileName);
													var fileLink = fileCallPath
															.replace(
																	new RegExp(
																			/\\/g),
																	"/");

													str += "<li "
			str += "data-path='"+obj.uploadPath+"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"' ><div>";
													str += "<span> "
															+ obj.fileName
															+ "</span>";
													str += "<button type='button' data-file=\'"+fileCallPath+"\' data-type='file' " 
			str += "class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
													str += "<img src='/resources/img/attach.png'></a>";
													str += "</div>";
													str + "</li>";
												}

											});

							uploadUL.append(str);
						}

						$(".uploadResult").on(
								"click",
								"button",
								function(e) {
									console.log("delete file");
									var targetFile = $(this).data("file");
									var type = $(this).data("type");
									var targetLi = $(this).closest("li");

									$.ajax({
										url : '/deleteFile',
										data : {
											fileName : targetFile,
											type : type
										},
										beforeSend : function(xhr) {
											xhr.setRequestHeader(
													csrfHeaderName,
													csrfTokenValue);
										},

										dataType : 'text',
										type : 'POST',
										success : function(result) {
											alert(result);

											targetLi.remove();
										}
									}); //$.ajax
								});

					});
</script>

</html>



