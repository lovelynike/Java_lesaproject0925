<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>lesa_member_insert</title>
<script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>

<style>
	section {
		width: 1000px;
		background-color: rgba(255, 51, 0, 1);	
		margin: 50px auto;		
	}
	
	table{
		border-collapse: collapse;
		border: 1px solid black;
		
		margin: 0 auto;
		
	}
	td{
		border: 1px solid black;
	}
	
	
</style>

</head>
<body>

<jsp:include page="lesa_header.jsp" />

<section>
	<form action="member_insert" method="post" name="frm">
				
		<table>
			<col style="width: 20%;">
			<tbody>
				<tr>
					<th>아이디</th>
						<td>							
							<input type="text" class="input_member idd" id = "checkid" name="id" required>
							<input type = "button" id = "check" value = "중복확인" required>
							<div class="result"></div>
							
							<span>4~15자의 영문, 숫자 입력</span>							
							
							<div class = "showCheck"></div>
						</td>
						
				</tr>
				<tr>
					<th>비밀번호</th>
					<td>
						
						<input type="password" class="input_member" name="pw" id="pw" required>
						<span>8~16자리 영문, 숫자 입력</span>
					</td>
				</tr>
				<tr>
					<th>비밀번호 확인</th>
					<td>
						
						<input type="password" class="input_member" name="pw2" id="pw2" required>
					</td>
				<tr>
					<th>이름</th>
					<td>						
						<input type="text" class="input_member" name="name" required>
					</td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td>
						
						<input type="text" class="input_member" name="bday" placeholder="예)940201" required>
					</td>
				</tr>
				<tr>
					<th>성별</th>
					<td class="d_radio">
						<input type="radio" id="m" name="gender" value="M" required />
						<label for="m">남자</label> 
						<input type="radio" id="w" name="gender" value="F" />
						<label for="w">여자</label>
					</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td>
						
						<input type="text" class="input_member" name="email1" required>@
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
						
						<input type="text" class="input_member" name="tel" placeholder="예)01012345678" required>
						<!-- <input type="button" class="btn_in_delete" value="인증번호전송"> -->
					</td>
				</tr>
				<!-- <tr>
					<th>인증번호</th>
					<td>
						<input type="text" class="input_member" name="number" placeholder="인증번호 입력">
						<input type="button" class="btn_in_update" value="확인">
					</td>
				</tr> -->
			</tbody>
		</table>
		
		<table>
				<tr>
					<td>
						<input type="checkbox" id="ch_all" name="chk" class="chk">
						<label for="ch_all">이용 약관에 모두 동의합니다</label>
					</td>
				</tr>
				<tr>
					<td>
						<input type="checkbox" id="ch1" name="check00" class="chk" required>
						<label for="ch1">[필수] 서비스 이용약관 동의</label><br>
					
						<input type="checkbox" id="ch2" name="check01" class="chk" required>
						<label for="ch2">[필수] 개인정보 수집 및 이용 동의</label><br>
					
						<input type="checkbox" id="ch3" name="check02" class="chk">
						<label for="ch3">[선택] 이메일 정보 수신동의</label><br>
					
						<input type="checkbox" id="ch4" name="check03" class="chk">
						<label for="ch4">[선택] SMS 정보 수신동의</label><br>
					</td>
				</tr>
		</table>
		
		<div class="btn_area">
			<input type="submit" value="회원가입" />
			<input type="reset" value="취소" />
		</div>
	</form>
</section>

<!-- =========================================== js  ============ -->
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
		

		//중복확인btn
		$("#checkid").blur(function (){
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


		//비번 같은지 확인
		$(function() {			
			$('#pw2').blur(function() {
				if ($('#pw').val() != $('#pw2').val()) {
					if ($('#pw2').val() != '') {
						alert("비밀번호가 일치하지 않습니다.");
						$('#pw2').val('');
						$('#pw2').focus();
					}
				}
			})
		});

	</script>


</body>
</html>