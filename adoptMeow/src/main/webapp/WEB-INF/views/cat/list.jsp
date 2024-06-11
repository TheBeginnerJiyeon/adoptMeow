<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


<script type="text/javascript">
	$(function() {		
		$('.pages').click(function(){			
			alert($(this).text())
			$.ajax({				
				url: "catList2",
				data:{					
					page: $(this).text()					
				},
				success: function(result){
					
					$('#d1').html(result)
					
				},
				error: function(){					
					alert('실패,,,,')					
				}								
			})			
		})	
	})
</script>
<title>Insert title here</title>
</head>
<body>

<h3>전체 등록 고양이 마리수 count : ${count}</h3>

<%
	int pages = (int) request.getAttribute("pages");
	for(int p=1; p<=pages; p++){ 
%>

		<button class="pages"><%= p %></button>		
<% 		
	}	
%>

<hr><br>

<div id="d1">

	<table>	
		<tr>
			<th>No.</th>
			<th>ID.</th>
			<th>CAT COLOR ID.</th>
			<th>CONTENT.</th>
			<th>AGE.</th>
			<th>SHELTER ID.</th>
			<th>IMG.</th>
			<th>CREATED DATE.</th>
			<th>CREATED PERSON.</th>
			<th>MODIFIED DATE.</th>
			<th>MODIFIED PERSON.</th>
			<th>STATUS.</th>		
		</tr>
		
		<c:forEach items="${list}" var="one">
		
			<!-- 이미지로 변환하고 아이디는 다 관련된 이름. 색이름 등으로 바꾸기  -->
			<tr>
				<td>${one.rownum}</td>
				<td>${one.id}</td>
				<td>${one.catColorId}</td>
				<td>${one.content}</td>
				<td>${one.age}</td>
				<td>${one.shelterId}</td>
				<td>${one.img}</td>
				<td>${one.createdDate}</td>
				<td>${one.createdPerson}</td>
				<td>${one.modifiedDate}</td>
				<td>${one.modifiedPerson}</td>
				<td>${one.status}</td>		
			</tr>		
		
		</c:forEach>
	
		
	</table>

</div>

<br><br>
<a href="${pageContext.servletContext.contextPath}/cat/catMain">
고양이 메인으로 돌아가기</a><br><br>
<a href="${pageContext.servletContext.contextPath}/cat/main">
초기 화면으로 돌아가기</a><br><br>




</body>
</html>