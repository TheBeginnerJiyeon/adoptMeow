<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	//alert(' 고양이 등록 페이지입니다. 반갑습니다.!')
</script>
<style type="text/css">
body { /* 컨트롤 + / - 자동주석, 태그선택! */
	background: lightblue;
}

button {
	background: pink;
}

.t1 { /* .은 클래스 선택!, 여러개선택!  */
	background: yellow;
	width: 150px;
	text-align: center;
}

#b1 { /* #은 아이디 선택!, 특정한 것 한 개만 선택! */
	color: red;
}

#b2 {
	color: blue;
}
</style>
</head>
<body>

	<!-- 이쪽에 메뉴바 포함 할꺼임 -->
	<%-- <jsp:include page="../common/menubar.jsp" /> --%>

	<div class="content">
		<br>
		<br>
		<div class="innerOuter">
			<h3>회원 등록 페이지</h3>
			<hr>
			<a href="list">
				<button id="b1">회원 리스트로</button>
			</a> <img
				src="${ pageContext.servletContext.contextPath }/resources/img/signup.jpg"
				width="200" height="200">
			<form action="insert" method="post">
				<table border="1">
					
				
					<!-- ajax 다 고려해서 넣기 -->
					<tr>
						<td class="t1">회원 분류</td>
						<td><select name="userCategory">
							<option value=10>관리자</option>
							<option value=20>일반회원</option>						
							</select>
						</td>
					</tr>
					<tr>
						<td class="t1">아이디</td>
						<td><input name="id"></td>
					</tr>
					<tr>
						<td class="t1">패스워드 :</td>
						<td><input name="pw"></td>
					</tr>
					<tr>
						<td class="t1">이름 :</td>
						<td><input name="name"></td>
					</tr>
					<tr>
						<td class="t1">전화번호 :</td>
						<td><input name="tel"></td>
					</tr>
					<tr>
						<td colspan="2" class="t1">
							<button id="b2">회원가입 데이터 전송</button>
						</td>
					</tr>
				</table>
		
			</form>




		</div>
		<br>
		<br>
	</div>


	<!-- 이쪽에 푸터바 포함할꺼임 -->
	<%-- <jsp:include page="../common/footer.jsp" /> --%>



</body>
</html>