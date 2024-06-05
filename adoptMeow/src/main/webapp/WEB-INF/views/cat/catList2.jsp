<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
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
		
		<tr>들오오나..</tr>	
		
		</c:forEach>
	
		
</table>