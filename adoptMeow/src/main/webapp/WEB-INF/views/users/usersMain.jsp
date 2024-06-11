<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>

</head>
<body>

	<h2>회원 게시판</h2>

	<h3>GET : /users/insert_form</h3>
	<form
		action="${pageContext.servletContext.contextPath}/users/insert_form"
		method="get">
		<button type="submit">Get 회원 등록 요청</button>
	</form>

	<h3>POST : /users/modify_form</h3>
	<form
		action="${pageContext.servletContext.contextPath}/users/modify_form"
		method="post">
		<button type="submit">POST 회원 수정 요청</button>
	</form>

	<h3>POST : /users/delete_form</h3>
	<form
		action="${pageContext.servletContext.contextPath}/users/delete_form"
		method="post">
		<button type="submit">POST 회원 삭제 요청</button>
	</form>

	<h3>GET : /users/list_form</h3>
	<form
		action="${pageContext.servletContext.contextPath}/users/list_form"
		method="get">
		<button type="submit">Get 회원 전체 목록 요청</button>
	</form>

	<h3>GET : /users/detail_form</h3>
	<button
		onclick="location.href='${pageContext.servletContext.contextPath}/users/detail_form'">GET
		회원 상세보기 요청</button>






	<br>
	<br>



</body>
</html>