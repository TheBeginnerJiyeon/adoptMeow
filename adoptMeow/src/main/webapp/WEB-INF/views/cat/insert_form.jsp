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
			<h3>고양이 등록 페이지</h3>
			<hr>
			<a href="list">
				<button id="b1">고양이 리스트로</button>
			</a> <img
				src="${ pageContext.servletContext.contextPath }/resources/img/cat2.jpg"
				width="200" height="200">
			<form action="insert" method="post">
				<table border="1">
					<tr>
						<td class="t1">아이디(자동생성)</td>
						<td><input name="id" disabled></td>
					</tr>
					<tr>
						<td class="t1">이름 :</td>
						<td><input name="name"></td>
					</tr>
					<tr>
						<td class="t1">고양이 색깔 :</td>
						<!-- 나중에 ajax로 cat_color테이블에서 가져올 것 -->
						<td><select name="catColorId">
								<option value=1>검냥이</option>
								<option value=2>흰둥이</option>
								<option value=3>점박이</option>
								<option value=4>노랑이</option>
								<option value=5>보라둥이</option>
						</select></td>
					</tr>
					<tr>
						<td class="t1">그 외 상세 :</td>
						<td><input name="content" value="content"></td>
					</tr>
					<tr>
						<td class="t1">나이 :</td>
						<td><input name="age" value="1"></td>
					</tr>
					<tr>
						<td class="t1">보호소 이름 :</td>
						<!-- 나중에 ajax로 SHELTER 테이블에서 가져올 것 -->
						<td><select name="shelterId">
								<option value="c100">GOOD</option>
								<option value="c200">JOA</option>
								<option value="c300">MARIA</option>
								<option value="c400">MY</option>
						</select></td>
					</tr>
					<!-- 이미지 업로드 방법으로 바꿀 것 -->
					<tr>
						<td class="t1">이미지 :</td>
						<td><input name="img" value="image1.jpg"></td>
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