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
<h1>강사 리스트 페이지</h1>

<hr>

<table>
	<tr>
		<td>idx</td><td>id</td>
		<td>teachtitle</td><td>subject</td>
		<td>subject2</td><td>lectype</td>
		<td>taddress</td><td>sal</td>
		<td>careertime</td><td>workstart</td>
		<td>workend</td>
		<td>workplace</td><td>position</td>
		<td>task</td><td>medialink</td>
		<td>photo</td><td>regdate</td>
		<td>extra1</td><td>extra2</td>
		<td>extra3</td>
		
	</tr>
	<c:forEach var="teacherlist" items="${list}">
		<tr>
			<td>${teacherlist.idx}</td>
			<td>${teacherlist.id}</td>
			<td>${teacherlist.teachtitle}</td>
			<td>${teacherlist.subject}</td>
			
			<td>${teacherlist.subject2}</td>
			<td>${teacherlist.lectype}</td>			
				
			<td>${teacherlist.taddress}</td> 
			<td>${teacherlist.sal}</td>	
			<td>${teacherlist.careertime}</td>
			<td>${teacherlist.workstart}</td>
			<td>${teacherlist.workend}</td>
			
			<td>${teacherlist.workplace}</td>
			<td>${teacherlist.position}</td>
			<td>${teacherlist.task}</td>
			<td>${teacherlist.medialink}</td>
			
			<td>${teacherlist.photo}</td>
			
			<td>${teacherlist.regdate}</td>
			<td>${teacherlist.extra1}</td>
			<td>${teacherlist.extra2}</td>
			<td>${teacherlist.extra3}</td>
					
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
						<a href="lesa_teacher_list?pageNum=${i }">[${i}]</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
		</td>
	</tr>
	
</table>
</div>

</body>
</html>