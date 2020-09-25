<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
</head>
<body>

<jsp:include page="lesa_header.jsp" />

<section class="contents">
	<form method="post" name="frm">
		<table class="write_tb">
			<tbody>
				<tr>
					<td>
						<input type="checkbox" id="ch_all" name="chk" class="chk">
						<label for="ch_all">이용 약관에 모두 동의합니다</label>
					</td>
				</tr>
				<tr>
					<td>
						<input type="checkbox" id="ch1" name="check00" class="chk">
						<label for="ch1"><span class="ch_ne">[필수]</span>서비스 이용약관 동의</label><br>
						<input type="checkbox" id="ch2" name="check01" class="chk">
						<label for="ch2"><span class="ch_ne">[필수]</span>개인정보 수집 및 이용 동의</label><br>
						<input type="checkbox" id="ch3" name="check02" class="chk">
						<label for="ch3"><span class="ch_se">[선택]</span>이메일 정보 수신동의</label><br>
						<input type="checkbox" id="ch4" name="check03" class="chk">
						<label for="ch4"><span class="ch_se">[선택]</span>SMS 정보 수신동의</label></td>
				</tr>
			</tbody>
		</table>
		
		<table class="write_tb">
			<col style="width: 20%;">
			<tbody>
				<tr>
					<th>아이디</th>
						<td>
							
							<input type="text" class="input_member idd" name="id">
							<div class="result"></div>
							
							<span>4~15자의영문, 숫자 입력</span>
						</td>
						
						<td><input type = "button" id = "check" value = "중복확인"></td>
						<td><div class = "showCheck"></div></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td>
						
						<input type="password" class="input_member" name="pw">
						<span>8~16자리 영문, 숫자 입력</span>
					</td>
				</tr>
				<tr>
					<th>비밀번호 확인</th>
					<td>
						
						<input type="password" class="input_member" name="pw2">
					</td>
				<tr>
					<th>이름</th>
					<td>
						
						<input type="text" class="input_member" name="name" >
					</td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td>
						
						<input type="text" class="input_member" name="bday" placeholder="예)940201" >
					</td>
				</tr>
				<tr>
					<th>성별</th>
					<td class="d_radio">
						<input type="radio" id="m" name="gender" value="M">
						<label for="m">남자</label> 
						<input type="radio" id="w" name="gender" value="F">
						<label for="w">여자</label>
					</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td>
						
						<input type="text" class="input_member" name="email1">@
						<input type="text" class="input_member input_email" name="email2">
						<select class="input_member input_select d_email" name="email3" style="width: 150px; margin: 0;">
							<option value="0">직접입력</option>
							<option value="gmail.com">gmail.com</option>
							<option value="naver.com">naver.com</option>
							<option value="daum.net">daum.net</option>
							<option value="hanmail.net">hanmail.net</option>
							<option value="hanmail.com">hanmail.com</option>
							<option value="korea.com">korea.com</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>휴대폰</th>
					<td>
						
						<input type="text" class="input_member" name="tel" placeholder="예)01012345678">
						<input type="button" class="btn_in_delete" value="인증번호전송">
					</td>
				</tr>
				<tr>
					<th>인증번호</th>
					<td>
						<input type="text" class="input_member" name="number" placeholder="인증번호 입력">
						<input type="button" class="btn_in_update" value="확인">
					</td>
				</tr>
			</tbody>
		</table>
		<div class="btn_area">
			<input type="button" value="회원가입" class="btn_ok" onclick="reg()">
			<input type="button" value="취소" class="btn_cancel">
		</div>
	</form>
</section>


<!-- 
<table>
		<tr>
			<td>아이디</td>	<td><input type = "text" class = "id" name = "id" placeholder = "아이디"></td>	<td><input type = "button" id = "check" value = "중복확인"></td>
		</tr>
		<tr>
			<td><div style = "text-align: right;">*</div></td>	<td><div class = "showCheck"></div></td>
		</tr>
		<tr>
			<td>비밀번호</td>	<td><input type = "text" class = "pw" name = "pw" placeholder = "비밀번호"></td>
		</tr>
		<tr>
			<td>이름</td>		<td><input type = "text" class = "name" name = "name" placeholder = "이름"></td>
		</tr>
		<tr>
			<td>휴대폰</td>	<td><input type = "text" class = "phone" name = "phone" placeholder = "휴대폰"></td>
		</tr>
		<tr>
			<td>이메일</td>	<td><input type = "text" class = "email" name = "email" placeholder = "이메일"></td>
		</tr>
		<tr>
			<td></td>	<td><input type = "button" value = "회원가입" onclick = "signUp()"></td>
		</tr>			
	</table>
 -->

	<script type="text/javascript">
		$(".d_email").change(function() {
			var optioniValue = $(".d_email option:selected").val();
			if (optioniValue != "0") {
				$(".input_email").val(optioniValue);
				$(".input_email").prop("disabled", true);
			} else {
				$(".input_email").val('');
				$(".input_email").prop("disabled", false);
			}
		});

		$("#ch_all").click(function() {
			if ($(this).is(":checked")) {
				$("#ch1").prop("checked", true);
				$("#ch2").prop("checked", true);
				$("#ch3").prop("checked", true);
				$("#ch4").prop("checked", true);
			} else {
				$("#ch1").prop("checked", false);
				$("#ch2").prop("checked", false);
				$("#ch3").prop("checked", false);
				$("#ch4").prop("checked", false);
			}
		});

		function reg(){
			frm.action="member_insert";
			frm.submit();
		} 

		//중복확인btn
		$("#check").click(function (){
			var idk = $(".idd").val();
			
			$.ajax({
				type: "post", 
				url: "check?id=" + idk, 
				success: function(data){
					if(data > 0){
						$(".showCheck").text("이미 존재하는 아이디입니다.");
						$(".showCheck").css("color", "red");
						$(".idd").text("");
						
					}else{
						$(".showCheck").text("사용할 수 있는 아이디입니다.");
						$(".showCheck").css("color", "green");						
					}
				},
				error: function(){
					alert("erorr");
				}
			});
		});
		
	</script>


</body>
</html>