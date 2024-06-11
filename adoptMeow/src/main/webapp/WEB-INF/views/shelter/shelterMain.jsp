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

	<h2>보호소 게시판</h2>


		<h3>GET : /shelter/insert_Form</h3>
		<a href=
		"${pageContext.servletContext.contextPath}/shelter/insert_form">
		insert_Form</a>


		<h3>POST : /shelter/modify_form</h3>
		<a href=
		"${pageContext.servletContext.contextPath}/shelter/modify_form">
		modify_Form</a>
		

		<h3>POST : /shelter/delete</h3>
		<a href=
		"${pageContext.servletContext.contextPath}/shelter/delete">
		delete</a>


		<h3>GET : /shelter/list</h3>
		<a href=
		"${pageContext.servletContext.contextPath}/shelter/list">
		list</a>

		<h3>GET : /shelter/detail_form</h3>
		<a href=
		"${pageContext.servletContext.contextPath}/shelter/list">
		detail one shelter</a>

		<h3>처음 페이지로</h3>
		<a href=
		"${pageContext.servletContext.contextPath}">
		main</a>


		<br>
		<br>



</body>
</html>