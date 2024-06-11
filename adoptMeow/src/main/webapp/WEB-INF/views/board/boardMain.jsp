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

	<h2>게시판 글</h2>


		<h3>GET : /board/insert_Form</h3>
		<a href=
		"${pageContext.servletContext.contextPath}/board/insert_form">
		insert_Form</a>


		<h3>POST : /board/modify_form</h3>
		<a href=
		"${pageContext.servletContext.contextPath}/board/modify_form">
		modify_Form</a>
		

		<h3>POST : /board/delete</h3>
		<a href=
		"${pageContext.servletContext.contextPath}/board/delete">
		delete</a>


		<h3>GET : /board/list</h3>
		<a href=
		"${pageContext.servletContext.contextPath}/board/list">
		list</a>

		<h3>GET : /board/detail_form</h3>
		<a href=
		"${pageContext.servletContext.contextPath}/board/list">
		detail one board</a>


		<br>
		<br>



</body>
</html>