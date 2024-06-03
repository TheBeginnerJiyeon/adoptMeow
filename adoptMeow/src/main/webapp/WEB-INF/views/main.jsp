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

	
	<h2>고양이 게시판</h2>
	
	
	<h3>GET : /cat/insert_Form</h3>
	<form action="${pageContext.servletContext.contextPath}/cat/insert_form" method="get">
		<button type="submit">Get 고양이 등록 요청</button>
	</form>
	
	<h3>POST : /cat/modify_form</h3>
	<form action="${pageContext.servletContext.contextPath}/cat/modify_form" method="post">
		<button type="submit">POST 고양이 수정 요청</button>
	</form>
	
	<h3>POST : /cat/delete_form</h3>
	<form action="${pageContext.servletContext.contextPath}/cat/delete_form" method="post">
		<button type="submit">POST 고양이 삭제 요청</button>
	</form>	
	
	
	<h3>GET : /cat/list_form</h3>
	<form action="${pageContext.servletContext.contextPath}/cat/list_form" method="get">
		<button type="submit">Get 고양이 전체 목록 요청</button>
	</form>
	
	<h3>GET : /cat/detail_form</h3>
	<button onclick="location.href='${pageContext.servletContext.contextPath}/cat/detail_form'">GET 고양이 상세보기 요청</button>
	
	
	<br><br>
	<hr>
	
	

	
	<h2>보호소 게시판</h2>
	
	<h3>GET : /shelter/insert_form</h3>
	<form action="${pageContext.servletContext.contextPath}/shelter/insert_form" method="get">
		<button type="submit">Get 보호소 등록 요청</button>
	</form>
	
	<h3>POST : /shelter/modify_form</h3>
	<form action="${pageContext.servletContext.contextPath}/shelter/modify_form" method="post">
		<button type="submit">POST 보호소 수정 요청</button>
	</form>
	
	<h3>POST : /shelter/delete_form</h3>
	<form action="${pageContext.servletContext.contextPath}/shelter/delete_form" method="post">
		<button type="submit">POST 보호소 삭제 요청</button>
	</form>
	
	<h3>GET : /shelter/list_form</h3>
	<form action="${pageContext.servletContext.contextPath}/shelter/list_form" method="get">
		<button type="submit">Get 보호소 전체 목록 요청</button>
	</form>
	
	<h3>GET : /shelter/detail_form</h3>
	<button onclick="location.href='${pageContext.servletContext.contextPath}/shelter/detail_form'">GET 보호소 상세보기 요청</button>
	
	
	<br><br>
	<hr>

	
	<h2>회원 게시판</h2>
	
	<h3>GET : /users/insert_form</h3>
	<form action="${pageContext.servletContext.contextPath}/users/insert_form" method="get">
		<button type="submit">Get 회원 등록 요청</button>
	</form>
	
	<h3>POST : /users/modify_form</h3>
	<form action="${pageContext.servletContext.contextPath}/users/modify_form" method="post">
		<button type="submit">POST 회원 수정 요청</button>
	</form>
	
	<h3>POST : /users/delete_form</h3>
	<form action="${pageContext.servletContext.contextPath}/users/delete_form" method="post">
		<button type="submit">POST 회원 삭제 요청</button>
	</form>	
	
	<h3>GET : /users/list_form</h3>
	<form action="${pageContext.servletContext.contextPath}/users/list_form" method="get">
		<button type="submit">Get 회원 전체 목록 요청</button>
	</form>
	
	<h3>GET : /users/detail_form</h3>
	<button onclick="location.href='${pageContext.servletContext.contextPath}/users/detail_form'">GET 회원 상세보기 요청</button>
	
	
	
	<br><br>
	<hr>
	
	
	<h2>게시글 게시판</h2>
	
	<h3>GET : /board/insert_form</h3>
	<form action="${pageContext.servletContext.contextPath}/board/insert_form" method="get">
		<button type="submit">Get 게시글 등록 요청</button>
	</form>
	
	<h3>POST : /board/modify_form</h3>
	<form action="${pageContext.servletContext.contextPath}/board/modify_form" method="post">
		<button type="submit">POST 게시글 수정 요청</button>
	</form>
	
	<h3>POST : /board/delete_form</h3>
	<form action="${pageContext.servletContext.contextPath}/board/delete_form" method="post">
		<button type="submit">POST 게시글 삭제 요청</button>
	</form>	
	
	<h3>GET : /board/list_form</h3>
	<form action="${pageContext.servletContext.contextPath}/board/list_form" method="get">
		<button type="submit">Get 게시글 전체 목록 요청</button>
	</form>
	
	<h3>GET : /board/detail_form</h3>
	<button onclick="location.href='${pageContext.servletContext.contextPath}/board/detail_form'">GET 게시글 상세보기 요청</button>
	
	
	<br><br>
	<hr>
	
	
	
</body>
</html>