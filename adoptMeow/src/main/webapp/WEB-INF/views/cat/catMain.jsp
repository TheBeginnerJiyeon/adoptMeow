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

	<h2>고양이 게시판</h2>


		<h3>GET : /cat/insert_Form</h3>
		<a href=
		"${pageContext.servletContext.contextPath}/cat/insert_form">
		insert_Form</a>


		<h3>POST : /cat/modify_form</h3>
		<a href=
		"${pageContext.servletContext.contextPath}/cat/modify_form">
		modify_Form</a>
		

		<h3>POST : /cat/delete</h3>
		<a href=
		"${pageContext.servletContext.contextPath}/cat/delete">
		delete</a>


		<h3>GET : /cat/list</h3>
		<a href=
		"${pageContext.servletContext.contextPath}/cat/list">
		list</a>

		<h3>GET : /cat/detail_form</h3>
		<a href=
		"${pageContext.servletContext.contextPath}/cat/list">
		detail one cat</a>

		<h3>처음 페이지로</h3>
		<a href=
		"${pageContext.servletContext.contextPath}/cat/main">
		main</a>


		<br>
		<br>



</body>
</html>