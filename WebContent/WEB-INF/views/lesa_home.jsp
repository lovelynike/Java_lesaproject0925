<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	
	<style>
		#wrap{
			text-align: center;
			font-size: 80px;
		}
	</style>
</head>
<body>

<jsp:include page="lesa_header.jsp" />

<div id="wrap">
      <div class="page">
         <span class="subtitle"><a href="lesa_class.jsp">분야별 강사</a></span>
      </div>
      <div class="page">
         <span class="subtitle"><a href="maplist.do">지역별 강사</a></span>
      </div>
      <div class="page">
         <span class="subtitle"><a href="hopelec_list">강의 요청</a></span>
      </div>
      <div class="page">
          <span class="subtitle"><a href="classlog.do">수강 후기</a></span>
      </div>
</div>
   
</body>
</html>
