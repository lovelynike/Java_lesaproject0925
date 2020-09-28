<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
<link href="css/teacher_insert.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
<style>
* {
	margin: 0;
	padding: 0;
	font-family: 'Noto Sans KR', 'Malgun Gothic', '맑은고딕', sans-serif;
	font-size: 14px;
	line-height: 1.2;
	font-weight: 300;
	letter-spacing: -0.05em;
}
</style>
</head>
<body>

	<jsp:include page="lesa_header.jsp" />
	
	${loginid} 님 반갑습니다 강사 등록 하러 오셨어요?
	
<form action="teacherinsertok.do" name="frm">
	<section class="contents">
		<h4 class="title_sub">개인정보</h4>
		<table class="write_tb">
			<col style="width: 20%;">
			<tbody>
				<tr>
					<th>기본사진</th>
					<td>
						<img src="resources/image/noPic.jpg"> <br>
						<input type="file" name="photo">
						<input type="button" value="수정" class="btn_in_update">
						<input type="button" value="삭제" class="btn_in_delete">
						<p>※ 예시)사진은 1M이하의 png, jpg 파일만 가능하며, 사진은 114x134에 최적화 되어 있습니다.</p>
					</td>
				</tr>
				<tr>
					<th>이름</th>
					<td>OOO</td>
				</tr>
				<tr>
					<th>주소</th>
					<td>부산 동래구 안락동</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td>010-1234-5678</td>
				</tr>
				<tr>
					<th>휴대폰</th>
					<td>010-123-1234</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td>hello@naver.com</td>
				</tr>
			</tbody>
		</table>
	
		<h4 class="title_sub">강사 정보</h4>
		<table class="write_tb">
			<tbody>
				<col style="width: 20%;">
				<tr>
					<th>강의 제목</th>
					<td>
						<input type="text" class="input_member" style="width: 500px" name="teachartitle">
					</td>
				</tr>
				<tr>
					<th>희망 강의 분야</th>
					<td class="d_radio">
						<input type="radio" value="게임" id="kategorie1" name="kategorie"> 
						<label for="kategorie1">게임</label>
						<input type="radio" value="음악" id="kategorie2" name="kategorie">
						<label for="kategorie2">음악</label> 
						<input type="radio" value="운동" id="kategorie3" name="kategorie"> 
						<label for="kategorie3">운동</label>
						<input type="radio" value="컴퓨터" id="kategorie4" name="kategorie">
						<label for="kategorie4">컴퓨터</label> 
						<input type="radio" value="요리" id="kategorie5" name="kategorie"> 
						<label for="kategorie5">요리</label>
						<input type="radio" value="미술" id="kategorie6" name="kategorie">
						<label for="kategorie6">미술</label> 
						<input type="radio" value="미용" id="kategorie7" name="kategorie">
						 <label for="kategorie7">미용</label>
						<input type="radio" value="운전" id="kategorie8" name="kategorie">
						<label for="kategori8">운전</label>
						 <input type="radio" value="동물" id="kategorie9" name="kategorie"> 
						<label for="kategorie9">동물</label>
						<input type="radio" value="식물" id="kategorie10" name="kategorie">
						<label for="kategorie10">식물</label>
					</td>
				</tr>
				<tr class="job">
					<th>상세분야</th>
					<td class="game d_radio">
						<input type="radio" value="롤" id="work1" name="work"> 
						<label for="work1">롤</label>
						<input type="radio" value="오버워치" id="work2" name="work"> 
						<label for="work2">오버워치</label>
						<input type="radio" value="배그" id="work3" name="work">
						<label for="work3">배그</label>
					</td>
					<td class="music d_radio">
						<input type="radio" value="타악기" id="work4" name="work"> 
						<label for="work4">타악기</label> 
						<input type="radio" value="현악기" id="work5" name="work"> 
						<label for="work5">현악기</label>
						<input type="radio" value="관악기" id="work6" name="work">
						<label for="work6">관악기</label>
					</td>
					<td class="sports d_radio">
						<input type="radio" value="헬스" id="work7" name="work">
						<label for="work7">헬스</label> 
						<input type="radio" value="요가" id="work8" name="work">
						<label for="work8">요가</label>
						<input type="radio" value="구기종목" id="work9" name="work"> 
						<label for="work9">구기종목</label>
					</td>
					<td class="computer d_radio">
						<input type="radio" value="안드로이드" id="work10" name="work"> 
						<label for="work10">안드로이드</label> 
						<input type="radio" value="웹" id="work11" name="work">
						<label for="work11">웹</label> 
						<input type="radio" value="아이폰" id="work12" name="work">
						<label for="work12">아이폰</label>
					</td>
					<td class="cook d_radio">
						<input type="radio" value="한식" id="work13" name="work">
						<label for="work13">한식</label>
						<input type="radio" value="양식" id="work14" name="work">
						<label for="work14">양식</label> 
						<input type="radio" value="제과" id="work15" name="work">
						<label for="work15">제과</label>
					</td>
					<td class="art d_radio">
						<input type="radio" value="서양화" id="work16" name="work"> 
						<label for="work16">서양화</label> 
						<input type="radio" value="동양화" id="work17" name="work"> 
						<label for="work17">동양화</label>
						<input type="radio" value="유채화" id="work18" name="work">
						<label for="work18">조소</label>
					</td>
				</tr>
				<tr>
					<th>강의 형태</th>
					<td class="d_radio">
						<input type="radio" value="te" id="type1" name="type"> 
						<label for="type1">(강사가)방문</label>
						<input type="radio" value="파트" id="type2" name="type">
						<label for="type2">(수강생이)방문</label> 
						<input type="radio" value="무관" id="type3" name="type"> 
						<label for="type3">온라인</label>
					</td>
				</tr>
				<tr class="area">
					<th>희망지역</th>
					<td>
						<select class="areaCombo input_member input_select" name ="maplist">
							<option>상세지역</option>
							<option value="강서구">강서구</option>
							<option value="금정구">금정구</option>
							<option value="기장군">기장군</option>
							<option value="남구">남구</option>
							<option value="동구">동구</option>
							<option value="동래구">동래구</option>
							<option value="부산진구">부산진구</option>
							<option value="북구">북구</option>
							<option value="사상구">사상구</option>
							<option value="사하구">사하구</option>
							<option value="서구">서구</option>
							<option value="수영구">수영구</option>
							<option value="연제구">연제구</option>
							<option value="영도구">영도구</option>
							<option value="중구">중구</option>
							<option value="해운대구">해운대구</option>
							<option value="전체">전체</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>희망시급</th>
					<td>
						<input type="text" class="money input_member input_title" name = "sal" style="width: 70px">&nbsp;만원&nbsp;
						<input type="checkbox" value="추후합의" name="agreement" id="agreement1" onclick="moneyCheck()">
						<label for="agreement1">추후합의</label>
					</td>
				</tr>
			</tbody>
		</table>
		<h4 class="title_sub">경력사항</h4>
		<table class="write_tb">
			<tbody>
				<col style="width: 20%;">
				<tr>
					<th>총 경력기간</th>
					<td>
						<select class="input_member input_select" name = "workendday">
							<option>년수선택</option>
							<option value="3">3개월</option>
							<option value="6">6개월</option>
							<option value="12">1년</option> <!-- for문으로 대체 -->
							<option value="240">20년</option>
						</select> &nbsp;이상
					</td>
				</tr>
				<tr>
					<th>경력사항</th>
					<td class="career">근무처명&nbsp;
						<input type="text" class="title input_member" style="width: 300px" name="worktitle">
						직급&nbsp;
						<input type="text" class="title input_member" style="width: 100px;" name="workname"><br>
						근무기간&nbsp;
						<input type="text" class="title input_member" style="width: 50px;" name="workday">개월<br>
						담당업무&nbsp;
						<input type="text" class="title input_member" style="width: 800px;" name="worklist"><br>
						<p class="example">
							예) 외국어(영어) 강사로 근무했습니다. 회화, 독해, 문법을 위주로 소수 스터디 그룹을 가르쳤습니다.
						</p>
						상세경력&nbsp;
						<textarea class="textarea" name="workmedal"></textarea>
						<p class="example">
							예) 2007. 12 영어말하기 경시대회 대상
						</p>
						동영상 링크&nbsp;
						<input type="text" class="title input_member" style="width: 500px" name="midialink">
						<p class="example">
							※ 동영상 링크 : 동영상 프로필, 강의샘플 등 자신을 표현할 수 있는 동영상을 링크해주세요.
						</p>
					</td>
				</tr>
			</tbody>
		</table>
		<div class="btn_area">
			<%-- <input type="hidden" name="memberid" value = "<%=memberid%>"> --%>
			<input type="button" value="회원가입" class="btn_ok" onclick="reg()">
			<input type="button" value="취소" class="btn_cancel" onclick="main()">
		</div>
	</section>
	</form>
	<script>
	function reg(){
		/* if(frm.id.value.trim().length ==0){
			alert("아이디는 필수입니다.");
			
		}else if(frm.pw.value.trim().length ==0){
			alert("비밀번호는 필수입니다.");
		}else{
			if($("#check01").is(":checked") && $("#check02").is(":checked")){
				frm.submit();
			}else{
				alert("필수항목은 체크 필수");
			}
		}
		if($("#check03").prop(":checked")){
			frm.chk.val(1);
		}
		else{
			frm.chk.val(0);
		} */
		
		frm.submit();
	}
	
	
	</script>
	
		<script>
		$(document).ready(function() {
			$(".job").hide();
			// ================================
			$(".area").hide();
			$(".areaCombo").hide();
		});
		$("input[name=kategorie]").change(function() {
			var radoiValue = $(this).val();
			var idx = $("input[name=kategorie]").index(this);
			if (radoiValue == "게임") {
				$(".job").show();
				$(".job .d_radio").hide();
				$(".job .d_radio").eq(idx).show();
				$("input:radio[name='work']").prop("checked", false);
			} else if (radoiValue == "음악") {
				$(".job").show();
				$(".job .d_radio").hide();
				$(".job .d_radio").eq(idx).show();
				$("input:radio[name='work']").prop("checked", false);
			} else if (radoiValue == "운동") {
				$(".job").show();
				$(".job .d_radio").hide();
				$(".job .d_radio").eq(idx).show();
				$("input:radio[name='work']").prop("checked", false);
			} else if (radoiValue == "컴퓨터") {
				$(".job").show();
				$(".job .d_radio").hide();
				$(".job .d_radio").eq(idx).show();
				$("input:radio[name='work']").prop("checked", false);
			} else if (radoiValue == "요리") {
				$(".job").show();
				$(".job .d_radio").hide();
				$(".job .d_radio").eq(idx).show();;
				$("input:radio[name='work']").prop("checked", false);
			} else if (radoiValue == "미술") {
				$(".job").show();
				$(".job .d_radio").hide();
				$(".job .d_radio").eq(idx).show();
				$("input:radio[name='work']").prop("checked", false);
			} else if (radoiValue == "미용") {
				$(".job").hide();
				$(".job .d_radio").hide();
				$("input:radio[name='work']").prop("checked", false);
			} else if (radoiValue == "운전") {
				$(".job").hide();
				$(".job .d_radio").hide();
				$("input:radio[name='work']").prop("checked", false);
			} else if (radoiValue == "동물") {
				$(".job").hide();
				$(".job .d_radio").hide();
				$("input:radio[name='work']").prop("checked", false);
			} else if (radoiValue == "식물") {
				$(".job").hide();
				$(".job .d_radio").hide();
				$("input:radio[name='work']").prop("checked", false);
			}
		});
		$("input[name=type]").change(function() {
			var radoiValue = $(this).val();
			if (radoiValue == "파트") {
				$(".area").show();
				$(".areaCombo").show();
			} else if (radoiValue == "전임") {
				$(".area").hide();
				$(".areaCombo").hide();
				$(".areaCombo option:eq(0)").prop("selected", "selected");
			} else if (radoiValue == "무관") {
				$(".area").hide();
				$(".areaCombo").hide();
				$(".areaCombo option:eq(0)").prop("selected", "selected");
			}
		});

		function moneyCheck() {
			if ($("input[type='checkbox']").is(":checked")) {
				$(".money").prop("disabled", true);
			} else {
				$(".money").prop("disabled", false);
			}
		}
		</script>
	


</body>
</html>