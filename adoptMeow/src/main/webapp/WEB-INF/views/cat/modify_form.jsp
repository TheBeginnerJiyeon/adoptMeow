<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	//alert(' 고양이 등록 페이지입니다. 반갑습니다.!')
</script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.min.js"></script>
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

#b2, #b3 {
	color: blue;
}

#b4{
	display: none;
}



</style>

<script type="text/javascript">


	$(function(){
		
		var catsData=[];
		
		$('#b3').click(function(){
			
			$.ajax({
				
				url: 'https://api.odcloud.kr/api/15090385/v1/uddi:ef1345c1-22ea-4c65-a84d-8c0823705f67?page=1&perPage=1000',
				dataType: 'json',
				headers: {
					
					Authorization : 'Infuser chNg8jx96krRfOCTvGcO2PvBKnrCrH0Qm6/JmV1TOw/Yu1T0x3jy0fHM8SOcZFnJIxdc7oqyM03PVmMA9UFOsA=='
					
				},
				
				success: function(array){
					
					console.log(array);
					
					var list = [];
					$(array.data).each(function(i,cat){
						
						list.push({
							
							경도: cat["경도(WGS84)"],
					        공고고유번호: cat["공고고유번호"],
					        공고시작일자: cat["공고시작일자"],
					        공고종료일자: cat["공고종료일자"],
					        관할기관: cat["관할기관"],
					        나이: cat["나이"],
					        발견장소: cat["발견장소"],
					        보호소도로명주소: cat["보호소도로명주소"],
					        보호소명: cat["보호소명"],
					        보호소우편번호: cat["보호소우편번호"],
					        보호소전화번호: cat["보호소전화번호"],
					        보호소지번주소: cat["보호소지번주소"],
					        상태: cat["상태"],
					        색상: cat["색상"],
					        성별: cat["성별"],
					        시군명: cat["시군명"],
					        썸네일이미지경로: cat["썸네일이미지경로"],
					        위도: cat["위도(WGS84)"],
					        이미지경로: cat["이미지경로"],
					        접수일자: cat["접수일자"],
					        중성화여부: cat["중성화여부"],
					        체중: cat["체중"],
					        특이사항: cat["특이사항"],
					        특징: cat["특징"],
					        품종: cat["품종"]							
							
						});						
					});
					
					
					var resultHtml = "<table border='1'><tr><th>관할기관</th><th>나이</th><th>발견장소</th><th>보호소도로명주소</th><th>보호소명</th><th>보호소우편번호</th><th>보호소전화번호</th><th>보호소지번주소</th><th>상태</th><th>색상</th><th>성별</th><th>시군명</th><th>썸네일이미지경로</th><th>위도</th><th>경도</th><th>공고고유번호</th><th>공고시작일자</th><th>공고종료일자</th><th>이미지경로</th><th>접수일자</th><th>중성화여부</th><th>체중</th><th>특이사항</th><th>특징</th><th>품종</th></tr>";
					
					$(list).each(function(i,cat){
						
						resultHtml += "<tr>";
					    resultHtml += "<td>" + cat.관할기관 + "</td>";
					    resultHtml += "<td>" + cat.나이 + "</td>";
					    resultHtml += "<td>" + cat.발견장소 + "</td>";
					    resultHtml += "<td>" + cat.보호소도로명주소 + "</td>";
					    resultHtml += "<td>" + cat.보호소명 + "</td>";
					    resultHtml += "<td>" + cat.보호소우편번호 + "</td>";
					    resultHtml += "<td>" + cat.보호소전화번호 + "</td>";
					    resultHtml += "<td>" + cat.보호소지번주소 + "</td>";
					    resultHtml += "<td>" + cat.상태 + "</td>";
					    resultHtml += "<td>" + cat.색상 + "</td>";
					    resultHtml += "<td>" + cat.성별 + "</td>";
					    resultHtml += "<td>" + cat.시군명 + "</td>";
					    resultHtml += "<td><img src='" + cat.썸네일이미지경로 + "' alt='썸네일'></td>";
					    resultHtml += "<td>" + cat.위도 + "</td>";
					    resultHtml += "<td>" + cat.경도 + "</td>";
					    resultHtml += "<td>" + cat.공고고유번호 + "</td>";
					    resultHtml += "<td>" + cat.공고시작일자 + "</td>";
					    resultHtml += "<td>" + cat.공고종료일자 + "</td>";
					    resultHtml += "<td><img src='" + cat.이미지경로 + "' alt='이미지'></td>";
					    resultHtml += "<td>" + cat.접수일자 + "</td>";
					    resultHtml += "<td>" + cat.중성화여부 + "</td>";
					    resultHtml += "<td>" + cat.체중 + "</td>";
					    resultHtml += "<td>" + cat.특이사항 + "</td>";
					    resultHtml += "<td>" + cat.특징 + "</td>";
					    resultHtml += "<td>" + cat.품종 + "</td>";
					    resultHtml += "</tr>";
																		
					})
					
					resultHtml+="</table>";
					
					$('#result').html(resultHtml);
					
					if(list.length>0){
						$('#b4')/show();
						catsData=list;
						
					}
					
					
				}				
				
			})			
			
		})
		
		
		
		
	})



</script>



</head>
<body>

	<!-- 이쪽에 메뉴바 포함 할꺼임 -->
	<%-- <jsp:include page="../common/menubar.jsp" /> --%>

	<div class="content">
		<br> <br>
		<div class="innerOuter">
			<h3>고양이 등록 페이지</h3>
			<hr>
			<a href="list">
				<button id="b1">고양이 리스트로</button>
			</a> <img
				src="${ pageContext.servletContext.contextPath }/resources/img/cat2.jpg"
				width="200" height="200">
			<form action="insert" method="post" enctype="multipart/form-data">
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
						<td>파일 선택 : <input type="file" name="singleFile"></td>
					</tr>





					<tr>
						<td colspan="2" class="t1">
							<button id="b2">고양이 등록 데이터 전송</button>
						</td>
					</tr>
				</table>

			</form>




		</div>
		<br> <br>
	</div>
	
	<div>
	
		<button id="b3">안산시 고양이, 보호소 정보 가져오기</button>
		
		<br><br><hr>
		
		<button id="b4">데이터 베이스에 고양이 / 보호소 정보 등록하기</button>
	
	
	
	
	</div>
	
	
	<div id="result"></div>
	


	<!-- 이쪽에 푸터바 포함할꺼임 -->
	<%-- <jsp:include page="../common/footer.jsp" /> --%>



</body>
</html>