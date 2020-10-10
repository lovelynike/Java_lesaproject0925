<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<%-- <%@ page session="false" %>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
<!--    jq_ UI cdn-->
    <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.min.js" integrity="sha256-eGE6blurk5sHj+rmkfsGYeKyZx3M4bG+ZlFyA7Kns7E=" crossorigin="anonymous"></script>
 --%>
<html>
<head>

  <!-- <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="ie=edge"> -->
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/css/lesa_home.css" >

	<title>LESA Home</title>
		
</head>
<body>

	<jsp:include page="lesa_header.jsp" />

	<div id="wrap">

		<div id="content-wrap">

			<section>
				<jsp:include page="lesa_field_view.jsp" />
			</section>

		</div>


		<footer>
			<h1>푸터</h1>
		</footer>

	</div>

	<!-- <script src="resources/js/lesa_home.js"></script> -->

</body>
</html>
