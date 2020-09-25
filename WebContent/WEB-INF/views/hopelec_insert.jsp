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
		margin: 250px;
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

강의요청 입력페이지

<form action="hopelec_insert" method="post">

<%-- <c:set var = "idid" scope = "session" value = "${loginid}"/> --%>
<input type="hidden" name="id" value="${loginid}">

<table>
	<tr>
		<td>제목</td><td>내용</td><td>카테고리1</td><td>카테고리2</td><td>강의타입</td><td>강의지역</td><td>희망시급</td>
	</tr>
	<tr>
		<td><input type="text" name="title"></td>
		<td><textarea name="content"></textarea></td>
		<td><input type="text" name="subject"></td>
		<td><input type="text" name="subject2"></td>
		<td><input type="text" name="lectype"></td>
		<td><input type="text" name="taddress"></td>
		<td><input type="text" name="sal"></td>
	</tr>

</table>

<input type="submit" value="저장">
<input type="reset" value="취소">

</form>

</div>

</body>
</html>