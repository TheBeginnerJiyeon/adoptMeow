<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">CatMeow에 오신 것을 환영합니다!!</h1>	

	
	<h2>신규 고양이 등록</h2>
	
	<h3>POST : /cat/modify</h3>
	<form action="${pageContext.servletContext.contextPath}/cat/modify" method="post">
		<button type="submit">POST 고양이 수정 요청</button>
	</form>
	
	<h3>POST : /cat/delete</h3>
	<form action="${pageContext.servletContext.contextPath}/order/delete" method="post">
		<button type="submit">POST 고양이 삭제 요청</button>
	</form>	
	
	<h3>GET : /cat/detail/{orderNo}</h3>
	<button onclick="location.href='${pageContext.servletContext.contextPath}/cat/detail/3'">GET 고양이 상세보기 요청</button>
	
	
	

	
	<h2>신규 보호소 등록</h2>
	
	<h3>POST : /shelter/modify</h3>
	<form action="${pageContext.servletContext.contextPath}/shelter/modify" method="post">
		<button type="submit">POST 보호소 수정 요청</button>
	</form>
	
	<h3>POST : /shelter/delete</h3>
	<form action="${pageContext.servletContext.contextPath}/shelter/delete" method="post">
		<button type="submit">POST 보호소 삭제 요청</button>
	</form>	
	
	<h3>GET : /shelter/detail/{orderNo}</h3>
	<button onclick="location.href='${pageContext.servletContext.contextPath}/shelter/detail/3'">GET 보호소 상세보기 요청</button>
	
	
	

	
	<h2>신규 회원 등록</h2>
	
	<h3>POST : /users/modify</h3>
	<form action="${pageContext.servletContext.contextPath}/users/modify" method="post">
		<button type="submit">POST 보호소 수정 요청</button>
	</form>
	
	<h3>POST : /users/delete</h3>
	<form action="${pageContext.servletContext.contextPath}/users/delete" method="post">
		<button type="submit">POST 보호소 삭제 요청</button>
	</form>	
	
	<h3>GET : /users/detail/{orderNo}</h3>
	<button onclick="location.href='${pageContext.servletContext.contextPath}/users/detail/3'">GET 회원 상세보기 요청</button>
	
	
	
	
	
	
	
</body>
</html>