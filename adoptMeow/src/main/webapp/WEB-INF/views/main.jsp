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


<body>
	<h1 align="center">CatMeow에 오신 것을 환영합니다!!</h1>

	<jsp:include page="common/menubar.jsp" />

	<jsp:include page="common/randomCat.jsp"/>


	<br>
	<br>

</body>
</html>

