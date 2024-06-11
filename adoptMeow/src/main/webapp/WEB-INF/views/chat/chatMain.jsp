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

<script type="text/javascript">
	function chatWithOthers() {

		let userName = "annonymousUser_" + Date.now();
		window.open("chatWithOthers", userName, "width=600,height=600");

	}

	function chatBot() {

		window.open("chatBot", "chatBot", "width=600,height=600");

	}
</script>


</head>
<body>

	<h2>챗봇 상담</h2>

	<h3>접속자 실시간 채팅 화면 열기</h3>
	<button onclick="chatWithOthers()">실시간 채팅</button>

	<h3>안내 챗봇 화면 열기</h3>
	<button onclick="chatBot()">안내 챗봇</button>


	<h3>처음 화면으로 돌아가기</h3>
	<a href="${pageContext.servletContext.contextPath}/cat/main"> main</a>





	<br>
	<br>



</body>
</html>