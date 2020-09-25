<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	*{
		text-align: center;
	}
 	table{
		width:1000px;
		border-collapse: collapse;
		margin-left: 500px;
	}
	td{
		border:1px solid black;
	} 
 	 
</style>
</head>
<body>
<jsp:include page="lesa_header.jsp" />


<form action="hopelec_update?idx=${hopelecUpdate.idx }" method="post">
<table>		
	<tr>
		<td>제목</td>		
		<td>희망강의분야</td>
		<td>희망강의세부</td>		
		<td>본문내용</td>
		<td>수업방식</td>
		<td>수업위치</td>
		<td>지급가능시급</td>	
	</tr>
		
	
	
	<tr>
		<td>			
			<input type="text" value="${hopelecUpdate.title}" name="title">			
		</td>		
		<td>			
			<input type="text" value="${hopelecUpdate.subject}" name="subject">	
		</td>
		<td>			
			<input type="text" value="${hopelecUpdate.subject2}" name="subject2">
		</td>
		<td>
			<input type="text" value="${hopelecUpdate.content}" name="content">				
		</td>
		<td>			
			<input type="text" value="${hopelecUpdate.lectype}" name="lectype">
		</td>
		<td>			
			<input type="text" value="${hopelecUpdate.taddress}" name="taddress">	
		</td>
		<td>			
			<input type="text" value="${hopelecUpdate.sal}" name="sal">	
		</td>
	</tr>	
		
</table>

<input type="submit" value="저장">
<input type="reset" value="취소">

</form>

<input type="button" value="글목록으로" onclick="location.href='hopelec_list'">


</body>
</html>