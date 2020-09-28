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
	font-family: 'Noto Sans KR', 'Malgun Gothic', '�������', sans-serif;
	font-size: 14px;
	line-height: 1.2;
	font-weight: 300;
	letter-spacing: -0.05em;
}
</style>
</head>
<body>

	<jsp:include page="lesa_header.jsp" />
	
	${loginid} �� �ݰ����ϴ� ���� ��� �Ϸ� ���̾��?
	
<form action="teacherinsertok.do" name="frm">
	<section class="contents">
		<h4 class="title_sub">��������</h4>
		<table class="write_tb">
			<col style="width: 20%;">
			<tbody>
				<tr>
					<th>�⺻����</th>
					<td>
						<img src="resources/image/noPic.jpg"> <br>
						<input type="file" name="photo">
						<input type="button" value="����" class="btn_in_update">
						<input type="button" value="����" class="btn_in_delete">
						<p>�� ����)������ 1M������ png, jpg ���ϸ� �����ϸ�, ������ 114x134�� ����ȭ �Ǿ� �ֽ��ϴ�.</p>
					</td>
				</tr>
				<tr>
					<th>�̸�</th>
					<td>OOO</td>
				</tr>
				<tr>
					<th>�ּ�</th>
					<td>�λ� ������ �ȶ���</td>
				</tr>
				<tr>
					<th>��ȭ��ȣ</th>
					<td>010-1234-5678</td>
				</tr>
				<tr>
					<th>�޴���</th>
					<td>010-123-1234</td>
				</tr>
				<tr>
					<th>�̸���</th>
					<td>hello@naver.com</td>
				</tr>
			</tbody>
		</table>
	
		<h4 class="title_sub">���� ����</h4>
		<table class="write_tb">
			<tbody>
				<col style="width: 20%;">
				<tr>
					<th>���� ����</th>
					<td>
						<input type="text" class="input_member" style="width: 500px" name="teachartitle">
					</td>
				</tr>
				<tr>
					<th>��� ���� �о�</th>
					<td class="d_radio">
						<input type="radio" value="����" id="kategorie1" name="kategorie"> 
						<label for="kategorie1">����</label>
						<input type="radio" value="����" id="kategorie2" name="kategorie">
						<label for="kategorie2">����</label> 
						<input type="radio" value="�" id="kategorie3" name="kategorie"> 
						<label for="kategorie3">�</label>
						<input type="radio" value="��ǻ��" id="kategorie4" name="kategorie">
						<label for="kategorie4">��ǻ��</label> 
						<input type="radio" value="�丮" id="kategorie5" name="kategorie"> 
						<label for="kategorie5">�丮</label>
						<input type="radio" value="�̼�" id="kategorie6" name="kategorie">
						<label for="kategorie6">�̼�</label> 
						<input type="radio" value="�̿�" id="kategorie7" name="kategorie">
						 <label for="kategorie7">�̿�</label>
						<input type="radio" value="����" id="kategorie8" name="kategorie">
						<label for="kategori8">����</label>
						 <input type="radio" value="����" id="kategorie9" name="kategorie"> 
						<label for="kategorie9">����</label>
						<input type="radio" value="�Ĺ�" id="kategorie10" name="kategorie">
						<label for="kategorie10">�Ĺ�</label>
					</td>
				</tr>
				<tr class="job">
					<th>�󼼺о�</th>
					<td class="game d_radio">
						<input type="radio" value="��" id="work1" name="work"> 
						<label for="work1">��</label>
						<input type="radio" value="������ġ" id="work2" name="work"> 
						<label for="work2">������ġ</label>
						<input type="radio" value="���" id="work3" name="work">
						<label for="work3">���</label>
					</td>
					<td class="music d_radio">
						<input type="radio" value="Ÿ�Ǳ�" id="work4" name="work"> 
						<label for="work4">Ÿ�Ǳ�</label> 
						<input type="radio" value="���Ǳ�" id="work5" name="work"> 
						<label for="work5">���Ǳ�</label>
						<input type="radio" value="���Ǳ�" id="work6" name="work">
						<label for="work6">���Ǳ�</label>
					</td>
					<td class="sports d_radio">
						<input type="radio" value="�ｺ" id="work7" name="work">
						<label for="work7">�ｺ</label> 
						<input type="radio" value="�䰡" id="work8" name="work">
						<label for="work8">�䰡</label>
						<input type="radio" value="��������" id="work9" name="work"> 
						<label for="work9">��������</label>
					</td>
					<td class="computer d_radio">
						<input type="radio" value="�ȵ���̵�" id="work10" name="work"> 
						<label for="work10">�ȵ���̵�</label> 
						<input type="radio" value="��" id="work11" name="work">
						<label for="work11">��</label> 
						<input type="radio" value="������" id="work12" name="work">
						<label for="work12">������</label>
					</td>
					<td class="cook d_radio">
						<input type="radio" value="�ѽ�" id="work13" name="work">
						<label for="work13">�ѽ�</label>
						<input type="radio" value="���" id="work14" name="work">
						<label for="work14">���</label> 
						<input type="radio" value="����" id="work15" name="work">
						<label for="work15">����</label>
					</td>
					<td class="art d_radio">
						<input type="radio" value="����ȭ" id="work16" name="work"> 
						<label for="work16">����ȭ</label> 
						<input type="radio" value="����ȭ" id="work17" name="work"> 
						<label for="work17">����ȭ</label>
						<input type="radio" value="��äȭ" id="work18" name="work">
						<label for="work18">����</label>
					</td>
				</tr>
				<tr>
					<th>���� ����</th>
					<td class="d_radio">
						<input type="radio" value="te" id="type1" name="type"> 
						<label for="type1">(���簡)�湮</label>
						<input type="radio" value="��Ʈ" id="type2" name="type">
						<label for="type2">(��������)�湮</label> 
						<input type="radio" value="����" id="type3" name="type"> 
						<label for="type3">�¶���</label>
					</td>
				</tr>
				<tr class="area">
					<th>�������</th>
					<td>
						<select class="areaCombo input_member input_select" name ="maplist">
							<option>������</option>
							<option value="������">������</option>
							<option value="������">������</option>
							<option value="���屺">���屺</option>
							<option value="����">����</option>
							<option value="����">����</option>
							<option value="������">������</option>
							<option value="�λ�����">�λ�����</option>
							<option value="�ϱ�">�ϱ�</option>
							<option value="���">���</option>
							<option value="���ϱ�">���ϱ�</option>
							<option value="����">����</option>
							<option value="������">������</option>
							<option value="������">������</option>
							<option value="������">������</option>
							<option value="�߱�">�߱�</option>
							<option value="�ؿ�뱸">�ؿ�뱸</option>
							<option value="��ü">��ü</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>����ñ�</th>
					<td>
						<input type="text" class="money input_member input_title" name = "sal" style="width: 70px">&nbsp;����&nbsp;
						<input type="checkbox" value="��������" name="agreement" id="agreement1" onclick="moneyCheck()">
						<label for="agreement1">��������</label>
					</td>
				</tr>
			</tbody>
		</table>
		<h4 class="title_sub">��»���</h4>
		<table class="write_tb">
			<tbody>
				<col style="width: 20%;">
				<tr>
					<th>�� ��±Ⱓ</th>
					<td>
						<select class="input_member input_select" name = "workendday">
							<option>�������</option>
							<option value="3">3����</option>
							<option value="6">6����</option>
							<option value="12">1��</option> <!-- for������ ��ü -->
							<option value="240">20��</option>
						</select> &nbsp;�̻�
					</td>
				</tr>
				<tr>
					<th>��»���</th>
					<td class="career">�ٹ�ó��&nbsp;
						<input type="text" class="title input_member" style="width: 300px" name="worktitle">
						����&nbsp;
						<input type="text" class="title input_member" style="width: 100px;" name="workname"><br>
						�ٹ��Ⱓ&nbsp;
						<input type="text" class="title input_member" style="width: 50px;" name="workday">����<br>
						������&nbsp;
						<input type="text" class="title input_member" style="width: 800px;" name="worklist"><br>
						<p class="example">
							��) �ܱ���(����) ����� �ٹ��߽��ϴ�. ȸȭ, ����, ������ ���ַ� �Ҽ� ���͵� �׷��� �����ƽ��ϴ�.
						</p>
						�󼼰��&nbsp;
						<textarea class="textarea" name="workmedal"></textarea>
						<p class="example">
							��) 2007. 12 ����ϱ� ��ô�ȸ ���
						</p>
						������ ��ũ&nbsp;
						<input type="text" class="title input_member" style="width: 500px" name="midialink">
						<p class="example">
							�� ������ ��ũ : ������ ������, ���ǻ��� �� �ڽ��� ǥ���� �� �ִ� �������� ��ũ���ּ���.
						</p>
					</td>
				</tr>
			</tbody>
		</table>
		<div class="btn_area">
			<%-- <input type="hidden" name="memberid" value = "<%=memberid%>"> --%>
			<input type="button" value="ȸ������" class="btn_ok" onclick="reg()">
			<input type="button" value="���" class="btn_cancel" onclick="main()">
		</div>
	</section>
	</form>
	<script>
	function reg(){
		/* if(frm.id.value.trim().length ==0){
			alert("���̵�� �ʼ��Դϴ�.");
			
		}else if(frm.pw.value.trim().length ==0){
			alert("��й�ȣ�� �ʼ��Դϴ�.");
		}else{
			if($("#check01").is(":checked") && $("#check02").is(":checked")){
				frm.submit();
			}else{
				alert("�ʼ��׸��� üũ �ʼ�");
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
			if (radoiValue == "����") {
				$(".job").show();
				$(".job .d_radio").hide();
				$(".job .d_radio").eq(idx).show();
				$("input:radio[name='work']").prop("checked", false);
			} else if (radoiValue == "����") {
				$(".job").show();
				$(".job .d_radio").hide();
				$(".job .d_radio").eq(idx).show();
				$("input:radio[name='work']").prop("checked", false);
			} else if (radoiValue == "�") {
				$(".job").show();
				$(".job .d_radio").hide();
				$(".job .d_radio").eq(idx).show();
				$("input:radio[name='work']").prop("checked", false);
			} else if (radoiValue == "��ǻ��") {
				$(".job").show();
				$(".job .d_radio").hide();
				$(".job .d_radio").eq(idx).show();
				$("input:radio[name='work']").prop("checked", false);
			} else if (radoiValue == "�丮") {
				$(".job").show();
				$(".job .d_radio").hide();
				$(".job .d_radio").eq(idx).show();;
				$("input:radio[name='work']").prop("checked", false);
			} else if (radoiValue == "�̼�") {
				$(".job").show();
				$(".job .d_radio").hide();
				$(".job .d_radio").eq(idx).show();
				$("input:radio[name='work']").prop("checked", false);
			} else if (radoiValue == "�̿�") {
				$(".job").hide();
				$(".job .d_radio").hide();
				$("input:radio[name='work']").prop("checked", false);
			} else if (radoiValue == "����") {
				$(".job").hide();
				$(".job .d_radio").hide();
				$("input:radio[name='work']").prop("checked", false);
			} else if (radoiValue == "����") {
				$(".job").hide();
				$(".job .d_radio").hide();
				$("input:radio[name='work']").prop("checked", false);
			} else if (radoiValue == "�Ĺ�") {
				$(".job").hide();
				$(".job .d_radio").hide();
				$("input:radio[name='work']").prop("checked", false);
			}
		});
		$("input[name=type]").change(function() {
			var radoiValue = $(this).val();
			if (radoiValue == "��Ʈ") {
				$(".area").show();
				$(".areaCombo").show();
			} else if (radoiValue == "����") {
				$(".area").hide();
				$(".areaCombo").hide();
				$(".areaCombo option:eq(0)").prop("selected", "selected");
			} else if (radoiValue == "����") {
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