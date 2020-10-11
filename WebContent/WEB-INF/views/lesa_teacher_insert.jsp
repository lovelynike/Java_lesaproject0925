<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
<!-- <link href="css/teacher_insert.css" rel="stylesheet" type="text/css"> -->



<title>lesa_teacher_insert</title>
<style>
	* {
		margin: 0;
		padding: 0;
		text-align: center;
	}
	table{
		border-collapse: collapse;
		margin: 0 auto;
		width: 70%;
	}
	td{
		border: 1px solid black;
		text-align: center;
	}
</style>
</head>
<body>

	<jsp:include page="lesa_header.jsp" />
	
	${loginid} 님 반갑습니다 강사 등록 하러 오셨어요?
	
<form action="teacher_insert" method="post" name="frm">
	
	
		<h2 class="title_sub">기본정보</h2>
		
		<table class="write_tb">
			<col style="width: 20%;">
			<tbody>
				<tr>
					<td>기본사진</td>
					<td>
						<img src="resources/image/noPic.jpg"> <br>
						<input type="file" name="photo">
						<input type="button" value="수정" class="btn_in_update">
						<input type="button" value="삭제" class="btn_in_delete">
						<!-- <p>※ 예시)사진은 1M이하의 png, jpg 파일만 가능하며, 사진은 114x134에 최적화 되어 있습니다.</p> -->
					</td>
				</tr>
				<tr>
					<td>이름</td>
					<td>${getmemId.name }</td>
				</tr>
				<!-- <tr>
					<td>주소</td>
					<td>
					    <input type="text" id="sample6_postcode" placeholder="우편번호">
						<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
						<input type="text" id="sample6_address" placeholder="주소" required>
						<input type="text" id="sample6_detailAddress" placeholder="상세주소">
						<input type="text" id="sample6_extraAddress" > 
					</td>
				</tr> -->
				<tr>
					<td>전화번호</td>
					<td>${getmemId.tel }</td>
				</tr>
				
				<tr>
					<td>이메일</td>
					<td>${getmemId.email }</td>
				</tr>
			</tbody>
		</table>





		<h2 class="title_sub">강사 정보</h2>
		
		<table class="write_tb">
			<tbody>
				<col style="width: 20%;">
				<tr>
					<td>강의 제목</td>
					<td>
						<input type="text" style="width: 500px" name="teachtitle" required>
					</td>
				</tr>
				<tr>
					<td>희망 강의 분야</td>
					<td class="d_radio">
					<input type="radio" value="computer" id="kategorie4" name="subject">
						<label for="kategorie4">컴퓨터</label> 
						<input type="radio" value="game" id="kategorie1" name="subject"> 
						<label for="kategorie1">게임</label>
						<input type="radio" value="music" id="kategorie2" name="subject">
						<label for="kategorie2">음악</label> 
						<input type="radio" value="sports" id="kategorie3" name="subject"> 
						<label for="kategorie3">운동</label>
						
						<input type="radio" value="cook" id="kategorie5" name="subject"> 
						<label for="kategorie5">요리</label>
						<input type="radio" value="arts" id="kategorie6" name="subject">
						<label for="kategorie6">미술</label> 
						<input type="radio" value="beauty" id="kategorie7" name="subject">
						 <label for="kategorie7">미용</label>
						<input type="radio" value="drive" id="kategorie8" name="subject">
						<label for="kategori8">운전</label>
						 <input type="radio" value="animal" id="kategorie9" name="subject"> 
						<label for="kategorie9">동물</label>
						<input type="radio" value="plant" id="kategorie10" name="subject">
						<label for="kategorie10">식물</label>
					</td>
				</tr>
				<tr class="job">
					<td>세부분야</td>
					<td class="game d_radio">
						<input type="radio" value="롤" id="work1" name="subject2"> 
						<label for="work1">롤</label>
						<input type="radio" value="오버워치" id="work2" name="subject2"> 
						<label for="work2">오버워치</label>
						<input type="radio" value="배그" id="work3" name="subject2">
						<label for="work3">배그</label>
					</td>
					<td class="music d_radio">
						<input type="radio" value="타악기" id="work4" name="subject2"> 
						<label for="work4">타악기</label> 
						<input type="radio" value="현악기" id="work5" name="subject2"> 
						<label for="work5">현악기</label>
						<input type="radio" value="관악기" id="work6" name="subject2">
						<label for="work6">관악기</label>
					</td>
					<td class="sports d_radio">
						<input type="radio" value="헬스" id="work7" name="subject2">
						<label for="work7">헬스</label> 
						<input type="radio" value="요가" id="work8" name="subject2">
						<label for="work8">요가</label>
						<input type="radio" value="구기종목" id="work9" name="subject2"> 
						<label for="work9">구기종목</label>
					</td>
					<td class="computer d_radio">
						<input type="radio" value="안드로이드" id="work10" name="subject2"> 
						<label for="work10">안드로이드</label> 
						<input type="radio" value="웹" id="work11" name="subject2">
						<label for="work11">웹</label> 
						<input type="radio" value="아이폰" id="work12" name="subject2">
						<label for="work12">아이폰</label>
					</td>
					<td class="cook d_radio">
						<input type="radio" value="한식" id="work13" name="subject2">
						<label for="work13">한식</label>
						<input type="radio" value="양식" id="work14" name="subject2">
						<label for="work14">양식</label> 
						<input type="radio" value="제과" id="work15" name="subject2">
						<label for="work15">제과</label>
					</td>
					<td class="art d_radio">
						<input type="radio" value="서양화" id="work16" name="subject2"> 
						<label for="work16">서양화</label> 
						<input type="radio" value="동양화" id="work17" name="subject2"> 
						<label for="work17">동양화</label>
						<input type="radio" value="유채화" id="work18" name="subject2">
						<label for="work18">조소</label>
					</td>
				</tr>
				<tr>
					<td>강의 형태</td>
					<td class="d_radio">
						<input type="radio" value="t" id="type1" name="lectype"> 
						<label for="type1">(강사님이 원하는)장소</label>
						<input type="radio" value="s" id="type2" name="lectype">
						<label for="type2">(수강생이 원하는)장소</label> 
						<input type="radio" value="o" id="type3" name="lectype"> 
						<label for="type3">온라인</label>
					</td>
				</tr>
				<tr class="area">
					<td>희망지역</td>
					<td>
						<select class="areaCombo input_member input_select" name ="taddress">
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
					<td>희망시급</td>
					<td>
						<input type="text" class="money input_member input_title" name = "sal" style="width: 70px">&nbsp;만원&nbsp;
						<input type="checkbox" value="추후합의" name="agreement" id="agreement1" onclick="moneyCheck()">
						<label for="agreement1">추후합의</label>
					</td>
				</tr>
			</tbody>
		</table>
		
		
	<h2 class="title_sub">경력사항</h2>
		<table class="write_tb">
			<tbody>
				<col style="width: 20%;">
				<tr>
					<td>총 경력기간</td>
					<td>
						<select class="input_member input_select" name = "careertime">
							<option>년선택</option>
							<% for(int i = 1; i < 41; i++){ %>
								<option value="<%=i%>"><%=i%>년</option>
							<%} %>
							
						</select> 
						
						<select class="input_member input_select" name = "careertime2">
							<option>월선택</option>
							<% for(int j = 0; j < 13; j++){ %>
								<option value="<%=j%>"><%=j%>개월</option>
							<%} %>
						</select>
					</td>
				</tr>
				<tr>
					<td>경력사항</td>
					<td class="career">
					         근무처명&nbsp;
						<input type="text" class="title input_member" style="width: 300px" name="workplace">
						직급&nbsp;
						<input type="text" class="title input_member" style="width: 100px;" name="position"><br>
						근무시작일&nbsp;
						<input type="text" class="title input_member" style="width: 50px;" name="workstart">개월<br>
						근무종료일&nbsp;
						<input type="text" class="title input_member" style="width: 50px;" name="workend">개월<br>
						담당업무&nbsp;
						<input type="text" class="title input_member" style="width: 800px;" name="task"><br>
						
						<p class="example">
							예) 외국어(영어) 강사로 근무했습니다. 회화, 독해, 문법을 위주로 소수 스터디 그룹을 가르쳤습니다.
						</p>
						
						상세경력&nbsp;
						<textarea class="textarea" name="workmedal"></textarea>
						
						<p class="example">
							예) 2007. 12 영어말하기 경시대회 대상
						</p>
						
						동영상 링크&nbsp;
						<input type="text" class="title input_member" style="width: 500px" name="medialink">
						<p class="example">
							※ 동영상 링크 : 동영상 프로필, 강의샘플 등 자신을 표현할 수 있는 동영상을 링크해주세요.
						</p>
					</td>
				</tr>
			</tbody>
		</table>
		
		<div class="btn_area">
			<input type="hidden" name="id" value = "${loginid}">
			<input type="submit" value="강사등록" />
			<input type="reset" value="취소" />
		</div>
	
</form>


<!-- 주소 관련
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script> -->


	
<script>
		$(document).ready(function() {
			$(".job").hide();			
			$(".area").hide();
			$(".areaCombo").hide();
		});
		
		$("input[name=subject]").change(function() {
			var radoiValue = $(this).val();
			var idx = $("input[name=subject]").index(this);
			if (radoiValue == "game") {
				$(".job").show();
				$(".job .d_radio").hide();
				$(".job .d_radio").eq(idx).show();
				$("input:radio[name='subject2']").prop("checked", false);
			} else if (radoiValue == "music") {
				$(".job").show();
				$(".job .d_radio").hide();
				$(".job .d_radio").eq(idx).show();
				$("input:radio[name='subject2']").prop("checked", false);
			} else if (radoiValue == "sports") {
				$(".job").show();
				$(".job .d_radio").hide();
				$(".job .d_radio").eq(idx).show();
				$("input:radio[name='subject2']").prop("checked", false);
			} else if (radoiValue == "computer") {
				$(".job").show();
				$(".job .d_radio").hide();
				$(".job .d_radio").eq(idx).show();
				$("input:radio[name='subject2']").prop("checked", false);
			} else if (radoiValue == "cook") {
				$(".job").show();
				$(".job .d_radio").hide();
				$(".job .d_radio").eq(idx).show();;
				$("input:radio[name='subject2']").prop("checked", false);
			} else if (radoiValue == "arts") {
				$(".job").show();
				$(".job .d_radio").hide();
				$(".job .d_radio").eq(idx).show();
				$("input:radio[name='subject2']").prop("checked", false);
			} else if (radoiValue == "beauty") {
				$(".job").hide();
				$(".job .d_radio").hide();
				$("input:radio[name='subject2']").prop("checked", false);
			} else if (radoiValue == "drive") {
				$(".job").hide();
				$(".job .d_radio").hide();
				$("input:radio[name='subject2']").prop("checked", false);
			} else if (radoiValue == "animal") {
				$(".job").hide();
				$(".job .d_radio").hide();
				$("input:radio[name='subject2']").prop("checked", false);
			} else if (radoiValue == "plant") {
				$(".job").hide();
				$(".job .d_radio").hide();
				$("input:radio[name='subject2']").prop("checked", false);
			}
		});
		$("input[name=lectype]").change(function() {
			var radoiValue = $(this).val();
			
			if (radoiValue == "t") {
				$(".area").show();
				$(".areaCombo").show();
			} else if (radoiValue == "s") {
				$(".area").show();
				$(".areaCombo").show();
				$(".areaCombo option:eq(0)").prop("selected", "selected");
			} else if (radoiValue == "o") {
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