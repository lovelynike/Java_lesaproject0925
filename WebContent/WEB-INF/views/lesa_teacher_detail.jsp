
<%@page import="java.util.Vector"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link href="css/lesa_teacher_detail.css" rel="stylesheet" type="text/css">
    <title>Document</title>

    <link href="css/left_menu.css" rel="stylesheet" type="text/css">
    <link href="css/header.css" rel="stylesheet" type="text/css">

    <script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
    <style>
        * {
            margin: 0;
            padding: 0;
            font-family: 'Noto Sans KR', sans-serif;
            font-size: 14px;
            line-height: 1.2;
            font-weight: 300;
            letter-spacing: -0.05em;
        }        
    </style>
</head>

<body>
 
   <jsp:include page="lesa_header.jsp" />

<%
	String name = request.getParameter("name");
	String subject = request.getParameter("subject");
	System.out.println("name: "+name+ "subject: "+subject);	
%>
    <section class="contents">
        <div class="teacher_card">
            <div class="teacher_header">
                <div class="teacher_title">
        <%
                String aa = name;
				//aa = aa.substring(1, aa.length()-1);
				String bb = subject;
				//bb = bb.substring(1, bb.length()-1);
		%>
               <span><%=aa%>선생님</span>                   
               </div>
                <div class="rating"><span class="score"><span>8.6</span> / 10</span>
                    <div class="stars">
                        <div class="star star_2"></div>
                        <div class="star star_2"></div>
                        <div class="star star_2"></div>
                        <div class="star star_2"></div>
                        <div class="star star_1"></div>
                    </div>
                </div>
            </div>
            <div class="teacher_wrap">
                <div class="flex_left">
                    <div class="img_wrap"><img src="img/top_rank.png" alt="1위메달" class="top_rank">
                        <div class="profile">
                        </div>
                    </div>
                    <div class="btn_box">
<%-- <%
String email = null;
String loginedid = (String)session.getAttribute("loginid");
if (loginedid != null) {
 		Memberdao dao = new Memberdao();
 		Vector<MemberBean> v = dao.getAllMember();
 		for(int i =0; i<v.size(); i++){
	 		if(aa.equals(v.get(i).getName())){
	 			email = v.get(i).getEmail();
	 			System.out.println(email+"*****************email");
	 		}else{
	 			System.out.println("not this email: "+ i);
	 		}
 		}
%> --%>
 			<input type="button" class="btn_follow" value="수강신청하기" onclick="reg01()">
<%-- <%
 	}else{
%>
 			<input type="button" class="btn_follow" value="수강신청하기" onclick="reg02()">
<%
 	} 
%>  --%>                  
        </div>
        <form method="post" name="frm">
        	<input type = "hidden" value = "<%=aa %>" name = "name">
        	<input type = "hidden" value = "<%=bb %>" name = "subject">                      	
        </form> 
        
        <form method="post" name="mailfrm">       	
        	
        	<input type="hidden" name="from" value="jspproject2020@naver.com" />
        <%--     <input type="hidden" name="to" value="<%=email %>" />
            <input type="hidden" name="subject" value="Hi~<%=aa %>    this is LESA." />
            <input type="hidden" name="content" value="<%=loginedid %> wanna your <%=bb %> lesson" /> --%>
                    	                    	
        </form>           
                </div>
                <div class = "testleft">
                	<p style="font-size: 22px">담당과목:<%=bb %></p>
                </div>             
            </div>
        </div>
    </section>

<script src="js/teacher_insert.js"></script>
<script>
    			function reg01(){    				
    				/* frm.action="golec.do";
    				frm.submit(); */
    				mailfrm.action="mailsend.do"
    				mailfrm.submit();
    				/* 한번에 두개 처리하는거 아는사람~ */
    			}
    			function reg02(){
    				alert("로그인을 해야 수강신청 가능합니다.");
    				location.href="lesa_login.jsp";
    			}
</script>
</body>
</html>
