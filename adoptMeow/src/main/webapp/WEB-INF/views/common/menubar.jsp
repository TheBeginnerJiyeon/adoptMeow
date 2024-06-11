<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
div#linkTo {
	display: flex;
	justify-content: center;
}

div#loginInfo {
	display: flex;
	justify-content: right;
}

div#linkTo span {
	font-color: black;
	font-weight: bold;
	font-size: 3rem;
	font-style: italic;
	padding: 5rem;
	display: inline-block;
}

div#loginInfo label{
	font-color: black;
	font-weight: bold;
	font-size: 1rem;
	font-style: italic;
	padding: 1rem;
	display: block;
}


div#loginInfo a{
	font-color: black;
	font-weight: bold;
	font-size: 1rem;
	font-style: italic;
	padding: 1rem;
	display: inline-block;
}



</style>


<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>

<div id="loginInfo">
	<c:if test="${empty sessionScope.loginUser}">
		
		<form action="users/login" method="post">
			로그인하세요<br>
			아이디 : <input name="id"> 패스워드 : <input name="pw">
			<button type="submit">로그인!!</button>
		</form>
	</c:if>

	<c:if test="${!empty sessionScope.loginUser}">

		<label>${sessionScope.loginUser.name}님 환영합니다.</label>
		<a href="users/myPage">마이페이지 가기</a>
		<a href="users/logout">로그아웃</a>

	</c:if>

</div>


<div id="linkTo">

	<span><a href="${pageContext.servletContext.contextPath}/chat/chatMain">채팅</a></span>
	<span><a href="${pageContext.servletContext.contextPath}/cat/catMain">고양이</a></span>
	<span><a
		href="${pageContext.servletContext.contextPath}/shelter/shelterMain">보호소</a></span> <span><a
		href="${pageContext.servletContext.contextPath}/users/usersMain">회원</a></span> <span><a
		href="${pageContext.servletContext.contextPath}/board/boardMain">게시글</a></span>

</div>

</body>
</html>