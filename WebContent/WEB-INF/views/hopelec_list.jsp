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
hopelec 페이지
<hr>


<c:set var = "idid" scope = "session" value = "${loginid}"/>
      
      <c:choose>
         <c:when test = "${idid eq null}">         
       		
			<h1>로그인해야 글쓰기 가능</h1>	
			
         </c:when>
         
         <c:otherwise>
         
   		 <span>${idid } 님 반갑습니다!</span>
					
			<a href="go_hopelec_insert">강의요청 글쓰기</a>
			
         </c:otherwise>
      </c:choose>



<table>
	<tr>
		<td>순번</td><td>작성자</td>
		<td>제목</td>
		<td>조회수</td><td>작성일</td>
		<!-- <td>subject</td><td>subject2</td>
		<td>lectype</td><td>taddress</td>
		<td>sal</td> -->
	</tr>
	<c:forEach var="hopelec" items="${list}">
		<tr>
			<td>${hopelec.idx}</td>
			<td>${hopelec.id}</td>
			<td><a href="hopelec_show?idx=${hopelec.idx}">${hopelec.title}</a></td>
						
			<td>${hopelec.hit}</td>
			<td>${hopelec.rdate}</td> 			
				
			<%-- <td>${hopelec.subject}</td>
			<td>${hopelec.subject2}</td>
			<td>${hopelec.lectype}</td>
			<td>${hopelec.taddress}</td>
			<td>${hopelec.sal}</td> --%>
					
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
						<a href="hopelec_list?pageNum=${i }">[${i}]</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
		</td>
	</tr>
	
</table>

</div>
</body>
</html>