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

<h1>강의요청게시판 // 강의 요청 목록</h1>

<c:set var = "idid" scope = "session" value = "${loginid}"/>
<c:set var ="owriter" value="${hopelecShow.id}"/>      
      <c:choose>
         <c:when test = "${idid eq owriter}"> 		
			
			
			<a href="hopelec_del?idx=${hopelecShow.idx}">삭제 해주세요</a>
			<hr>
			<a href="go_hopelec_update?idx=${hopelecShow.idx}">수정해주세요</a>			
					
         </c:when>
         
         <c:otherwise>   		
			작성자가 아님.
         </c:otherwise>
      </c:choose>


<table>	
	
	<tr>
		<td>제목</td>
		<td>글쓴이</td>
		<td>날짜</td>
		<td>조회수</td>
		<td>희망강의분야</td>
		<td>희망강의세부</td>		
		<td>본문내용</td>
		<td>수업방식</td>
		<td>수업위치</td>
		<td>지급가능시급</td>	
	</tr>	
	
	<tr>
		<td>			
			${hopelecShow.title}			
		</td>
		<td>			
			${hopelecShow.id}
		</td>
		<td>			
			${hopelecShow.rdate}
		</td>
		<td>			
			${hopelecShow.hit}
		</td>
		<td>			
			${hopelecShow.subject}
		</td>
		<td>			
			${hopelecShow.subject2}
		</td>
		<td>			
			${hopelecShow.content}
		</td>
		<td>			
			${hopelecShow.lectype}
		</td>
		<td>			
			${hopelecShow.taddress}
		</td>
		<td>			
			${hopelecShow.sal}
		</td>
	</tr>	
		
</table>


<input type="button" value="글목록으로" onclick="location.href='hopelec_list'">



</body>
</html>