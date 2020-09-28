<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	header {
		text-align: center;
		z-index: 1;
		border: 1px solid black;
	}
	.nav{
		text-align: right;
	}
</style>

</head>
<body>

	
<header>

		<h1 class="logo">
			<a href="home"><img src="resources/image/logo2.PNG"></a>
		</h1>
	<div class="nav">

		


 <c:set var = "idid" scope = "session" value = "${loginid}"/>
      
      <c:choose>
         <c:when test = "${idid eq null}">         
       		
			<a href="go_login" class="login">로그인</a>
			<a href="go_member_insert" class="login">회원가입</a>			
			
         </c:when>
         
         <c:otherwise>
         
   		 <span>${idid } 님 반갑습니다!</span>
					
			<a href="lesa_logout" class="login">로그아웃</a>
			<a href="memberupdate.do?id=${idid }" class="my_page" class="my_page">마이 페이지</a>			
			<a href="go_teacher_insert?id=${idid }" class="teacher_insert">강사등록</a>
			
         </c:otherwise>
      </c:choose>
      
      <a href="home" class="home">HOME</a>
      <a href="lesa_asked_question.jsp" class="service_center">고객센터</a>
      
	</div>
</header>

</body>
</html>