<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="resources/css/lesa_header.css" rel="stylesheet" type="text/css">

<title>LESA header</title>

</head>
<body>

	
<header>

			<a class="logo" href="home"><img src="resources/image/logo2.PNG"></a>

			<nav>
				<ul class="nav-items">

					<c:set var="idid" scope="session" value="${loginid}" />

					<c:choose>
						<c:when test="${idid eq null}">

							<li><a href="go_login" class="login">로그인</a></li>
							<li><a href="go_member_insert" class="login">회원가입</a></li>

						</c:when>

						<c:otherwise>

							<li><span>${idid } 님 반갑습니다!</span></li>

							<li><a href="lesa_logout" class="login">로그아웃</a></li>
							<li><a href="memberupdate.do?id=${idid }" class="my_page"
								class="my_page">마이 페이지</a></li>
							<li><a href="go_teacher_insert?id=${idid }"
								class="teacher_insert">강사등록</a></li>

						</c:otherwise>
					</c:choose>

					<li><a href="home" class="home">HOME</a></li>
					<li><a href="lesa_asked_question.jsp" class="service_center">고객센터</a></li>

				</ul>
			</nav>

		</header>

</body>
</html>