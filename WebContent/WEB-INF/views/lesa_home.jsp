<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
<!--    jq_ UI cdn-->
    <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.min.js" integrity="sha256-eGE6blurk5sHj+rmkfsGYeKyZx3M4bG+ZlFyA7Kns7E=" crossorigin="anonymous"></script>

<html>
<head>

  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

<link href="resources/css/lesa_home.css" rel="stylesheet" type="text/css">

	<title>LESA Home</title>
		
</head>
<body>

<jsp:include page="lesa_header.jsp" />

<div id="wrap">
		
		<div id="content-wrap">
     <!--  <aside>
        <h1>Aside</h1>
        <ul>
          <li><a href="#" class="active">분야별 선생님</a></li>
          <li><a href="#">지역별 선생님</a></li>
          <li><a href="hopelec_list">강의 요청</a></li>
          <li><a href="#">수강후기</a></li>
        </ul>
      </aside> -->
      
     <section>
        <article id="partlec" class="page">
          <a class="main_a" href="home"><h1>분야별 선생님</h1></a>
          <p>London is the capital city of England. It is the most populous city in the United Kingdom, with a metropolitan area of over 13 million inhabitants.</p>
        </article>
        
        <!-- <article id="regionlec" class="page">
          <h1>지역별 선생님</h1>
          <p>London is the capital city of England. It is the most populous city in the United Kingdom, with a metropolitan area of over 13 million inhabitants.</p>
          
        </article>
        <article id="hopelec" class="page">
          <h1>강의 요청</h1>
          <p>London is the capital city of England. It is the most populous city in the United Kingdom, with a metropolitan area of over 13 million inhabitants.</p>
          <p>Standing on the River Thames, London has been a major settlement for two millennia,its history going back to its founding by the Romans, who named it Londinium.</p>
            
        </article>
        <article id="afterlec" class="page">
         <h1>수강후기</h1>
          <p>London is the capital city of England. It is the most populous city in the United Kingdom, with a metropolitan area of over 13 million inhabitants.</p>
          
        </article> -->
      </section>
      <!-- end of content-wrap -->
    </div>
    
    
    <footer><h1>푸터</h1></footer>
  <!-- end of wrap   -->
  </div>
  
  <script src="resources/js/lesa_home.js"></script>
   
</body>
</html>
