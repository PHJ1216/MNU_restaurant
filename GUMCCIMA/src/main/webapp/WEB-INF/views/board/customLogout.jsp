<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<style>
body {
	background-color: #4EA685; /* 배경색 설정 */
	text-align: center; /* 텍스트 정렬 설정 */
	color: white; /* 폰트 색깔 설정 */
	font-size: 50px; /* 폰트 크기 설정 */
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	/* 폰트 설정 */
	margin: 0; /* Body의 margin 제거 */
	height: 100vh; /* 뷰포트 높이에 100%로 맞추기 */
	display: flex; /* Flexbox 사용 */
	align-items: center; /* 수직 가운데 정렬 */
	justify-content: center; /* 수평 가운데 정렬 */
}

.content-container {
	text-align: center; /* 텍스트 정렬 설정 */
	color: white; /* 폰트 색깔 설정 */
	font-size: 50px; /* 폰트 크기 설정 */
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	/* 폰트 설정 */
	border: 7px solid white; /* 검은색 테두리 두께 3px로 설정 */
	border-radius: 5px; /* 테두리 모서리를 둥글게 만듭니다. */
	padding: 10px; /* fieldset 내부 여백 설정 */
}

a {
	text-decoration: none; /* 링크의 밑줄 제거 */
	color: white; /* 링크의 글자 색깔을 하얀색으로 설정 */
}

fieldset {
	border: 6px solid white; /* 검은색 테두리 두께 3px로 설정 */
	border-radius: 5px; /* 테두리 모서리를 둥글게 만듭니다. */
	padding: 10px; /* fieldset 내부 여백 설정 */
}
</style>


<body>


	<div class="content-container">
		<img src="../resources/assets/img/logo/logo.png" alt="로고"
			height="90px" width="500px">

		<p>로그아웃 화면입니다!</p>

		<form role="form" method='post' action="logout">
			<fieldset>
				<a href="/" style="">로그아웃 </a>
			</fieldset>
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>
	</div>


</body>

<script>
	$(".btn-success").on("click", function(e) {

		e.preventDefault();
		$("form").submit();

	});
</script>
<c:if test="${param.logout != null}">
	<script>
	$(document).ready(function(){
	alert( ”로그아옷하였습니다. ”); 
	});
	</script>
</c:if>
