<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	#wrap{		
		border: 1px solid red;
		margin-top: 150px;
		text-align: center;
	}
	table{
		border-collapse: collapse;
		margin: 0 auto;
	}
	td{
		border: 1px solid black;
	}

</style>

</head>
<body>

<jsp:include page="lesa_header.jsp" />


<div id="wrap">
<h1>맴버 리스트 페이지</h1>

<!-- <a href="go_hopelec_insert">값넣기</a> -->

<hr>

<table>
	<tr>
		<td>idx</td><td>id</td>
		<td>pw</td><td>name</td>
		<td>Bday</td><td>gender</td>
		<td>email</td><td>tel</td>
		<td>Nsubject</td><td>date</td>
		<td>photo</td>
		<td>check00</td><td>check01</td>
		<td>check02</td><td>check03</td>
		<td>level</td>
		
	</tr>
	<c:forEach var="memberlist" items="${list}">
		<tr>
			<td>${memberlist.idx}</td>
			<td>${memberlist.id}</td>
			<td>${memberlist.pw}</td>
			<td>${memberlist.name}</td>
			
			<td>${memberlist.bday}</td>
			<td>${memberlist.gender}</td>			
				
			<td>${memberlist.email}</td> 
			<td>${memberlist.tel}</td>	
			<td>${memberlist.nsubject}</td>
			<td>${memberlist.rdate}</td>
			<td>${memberlist.photo}</td>
			
			<td>${memberlist.check00}</td>
			<td>${memberlist.check01}</td>
			<td>${memberlist.check02}</td>
			<td>${memberlist.check03}</td>
			
			<td>${memberlist.level}</td>
					
		</tr>
	
	</c:forEach>
	
	<tr>
		<td colspan="2">
			<c:forEach var="i" begin="1" end="${pageCount }" step="1">
				<c:choose>
					<c:when test="${i eq pageNum }">
						[${i}]
					</c:when>
					<c:otherwise>
						<a href="lesa_member_list?pageNum=${i }">[${i}]</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
		</td>
	</tr>
	
</table>
</div>

</body>
</html>