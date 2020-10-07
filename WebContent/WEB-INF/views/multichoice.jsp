<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script type="text/javascript">
$(function(){
    
    // 질문유형을 선택한다.
    chnQnaType('1' , '11');
});

function chnQnaType(type , select) {
    
    $('#schQnaType').empty();
    
    if(type == '1') { // 상품관련
        $('#schQnaType').append("<option value='11' >상품관련</option>'");
    } else if (type == '2') {  // 일반관련
        $('#schQnaType').append("<option value='21' >이용문의</option>'");
        $('#schQnaType').append("<option value='22' >회원가입/로그인</option>'");
        $('#schQnaType').append("<option value='23' >기타문의</option>'");
    } else if ( type == '3') {  // 주문관련
        $('#schQnaType').append("<option value='31' >결제문의</option>'");
        $('#schQnaType').append("<option value='32' >배송문의</option>'");
        $('#schQnaType').append("<option value='33' >주문취소문의</option>'");
        $('#schQnaType').append("<option value='34' >반품문의</option>'");
        $('#schQnaType').append("<option value='35' >기타문의</option>'");
    }
    document.getElementById("schQnaType").style.display = "";
    
    if ($.trim(select) != "") {
        $('#select1').val(type);
        $('#schQnaType').val(select);
    }
}


<tr>
    <th>질문유형</th>
	<td width="600px">
	    <select name="questType" id="select1" onChange="chnQnaType(this.value)" >
		    <option value="1">상품관련</option>
		    <option value="2">일반관련</option>
		    <option value="3">주문관련</option>
		</select>    
		<select id="schQnaType" name="schQnaType"   style="width:120px; display:none;" >
		</select>
	</td>
	<th>처리상황</th>
	<td>
	    <select name="stat" id="selectBox">
		    <option value="1" <c:if test="${sform.schStatus == '1'}">selected="selected"</c:if>>답변완료</option>
		    <option value="2" <c:if test="${sform.schStatus == '2'}">selected="selected"</c:if>>처리중</option>
		    <option value="3" <c:if test="${sform.schStatus == '3'}">selected="selected"</c:if>>대기</option>
		</select>
	</td>
</tr>

</body>
</html>