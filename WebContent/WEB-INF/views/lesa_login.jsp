<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	.popup_login{
		border:1px solid black;
		margin: 0 auto;
		width: 400px;
		text-align: center;
	}

</style>

<script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
</head>
<body>

<jsp:include page="lesa_header.jsp" />


<c:set var = "idid" scope = "session" value = "${loginid}"/>
<c:choose>
         <c:when test = "${idid eq null}"> 		
			
			
				<div class="popup_login">
<form action="member_login" method="post" name="frm">
		<h2 class="title_popup">로그인</h2>
		<ul class="login_input">
			<li>
				<input type="text" class="input_popup" placeholder="아이디" name="id">
			</li>
			<li>
				<input type="password" class="input_popup"placeholder="비밀번호" name="pw">
			</li>
		</ul>
		<div class="popup_btn">
			<input type="button" value="로그인" onclick="func()">
		</div>
</form>
		<ul class="member_link">
			<li>
				<a href="lesa_member.jsp"> <img src="resources/image/icon_join.png"> 회원가입</a>
			</li>
			<li>
				<a href="#"> <img src="resources/image/icon_id.png"> 아이디 찾기</a>
			</li>
			<li>
				<a href="#"> <img src="resources/image/icon_pw.png"> 비밀번호 찾기</a>
			</li>
		</ul>
	</div>	
					
         </c:when>
         
         <c:otherwise>   		
			<input type= "button" value="로그아웃" onclick="javascript:location.href='lesa_logout.jsp'">

			${loginid } 님 반갑다잉
			
         </c:otherwise>
      </c:choose>




	
	<script>
		$(document).ready(function() {
			$(".login").removeAttr("href");
		});
		
		function func(){
			if(frm.id.value.trim().length==0 ){
				alert("아이디 필수 입력입니다.");
			}else if(frm.pw.value.trim().length==0){
				alert("비번 필수 입력입니다.");
			}else{
				frm.submit();
			}
		}
	</script>

</body>
</html>