<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
<!-- <link href="css/teacher_insert.css" rel="stylesheet" type="text/css"> -->
<title>Insert title here</title>
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
	
	${loginid} �� �ݰ����ϴ� ���� ��� �Ϸ� ���̾��?
	
<form action="teacherinsertok.do" name="frm">
	
	
		<h2 class="title_sub">�⺻����</h2>
		
		<table class="write_tb">
			<%-- <col style="width: 20%;"> --%>
			<tbody>
				<tr>
					<td>�⺻����</td>
					<td>
						<img src="resources/image/noPic.jpg"> <br>
						<input type="file" name="photo">
						<input type="button" value="����" class="btn_in_update">
						<input type="button" value="����" class="btn_in_delete">
						<p>�� ����)������ 1M������ png, jpg ���ϸ� �����ϸ�, ������ 114x134�� ����ȭ �Ǿ� �ֽ��ϴ�.</p>
					</td>
				</tr>
				<tr>
					<td>�̸�</td>
					<td>${getmemId.name }</td>
				</tr>
				<tr>
					<td>�ּ�</td>
					<td>�λ� ������ �ȶ���</td>
				</tr>
				<tr>
					<td>��ȭ��ȣ</td>
					<td>${getmemId.tel }</td>
				</tr>
				
				<tr>
					<td>�̸���</td>
					<td>${getmemId.email }</td>
				</tr>
			</tbody>
		</table>
	
		<h2 class="title_sub">���� ����</h2>
		
		<table class="write_tb">
			<tbody>
				<col style="width: 20%;">
				<tr>
					<td>���� ����</td>
					<td>
						<input type="text" style="width: 500px" name="teachtitle">
					</td>
				</tr>
				<tr>
					<td>��� ���� �о�</td>
					<td class="d_radio">
						<input type="radio" value="game" id="kategorie1" name="kategorie"> 
						<label for="kategorie1">����</label>
						<input type="radio" value="music" id="kategorie2" name="kategorie">
						<label for="kategorie2">����</label> 
						<input type="radio" value="sports" id="kategorie3" name="kategorie"> 
						<label for="kategorie3">�</label>
						<input type="radio" value="computer" id="kategorie4" name="kategorie">
						<label for="kategorie4">��ǻ��</label> 
						<input type="radio" value="cook" id="kategorie5" name="kategorie"> 
						<label for="kategorie5">�丮</label>
						<input type="radio" value="arts" id="kategorie6" name="kategorie">
						<label for="kategorie6">�̼�</label> 
						<input type="radio" value="beauty" id="kategorie7" name="kategorie">
						 <label for="kategorie7">�̿�</label>
						<input type="radio" value="drive" id="kategorie8" name="kategorie">
						<label for="kategori8">����</label>
						 <input type="radio" value="animal" id="kategorie9" name="kategorie"> 
						<label for="kategorie9">����</label>
						<input type="radio" value="plant" id="kategorie10" name="kategorie">
						<label for="kategorie10">�Ĺ�</label>
					</td>
				</tr>
				<tr class="job">
					<td>���κо�</td>
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
					<td>���� ����</td>
					<td class="d_radio">
						<input type="radio" value="t" id="type1" name="lectype"> 
						<label for="type1">(������� ���ϴ�)���</label>
						<input type="radio" value="s" id="type2" name="lectype">
						<label for="type2">(�������� ���ϴ�)���</label> 
						<input type="radio" value="o" id="type3" name="lectype"> 
						<label for="type3">�¶���</label>
					</td>
				</tr>
				<tr class="area">
					<td>�������</td>
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
					<td>����ñ�</td>
					<td>
						<input type="text" class="money input_member input_title" name = "sal" style="width: 70px">&nbsp;����&nbsp;
						<input type="checkbox" value="��������" name="agreement" id="agreement1" onclick="moneyCheck()">
						<label for="agreement1">��������</label>
					</td>
				</tr>
			</tbody>
		</table>
		
		
	<h2 class="title_sub">��»���</h2>
		<table class="write_tb">
			<tbody>
				<col style="width: 20%;">
				<tr>
					<td>�� ��±Ⱓ</td>
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
					<td>��»���</td>
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
			<input type="button" value="������" class="btn_ok" onclick="reg()">
			<input type="reset" value="���" class="btn_cancel">
		</div>
	
</form>


	<script>
	function reg(){				
		frm.submit();
	}
	
	
	</script>
	
		<script>
		$(document).ready(function() {
			$(".job").hide();			
			$(".area").hide();
			$(".areaCombo").hide();
		});
		
		$("input[name=kategorie]").change(function() {
			var radoiValue = $(this).val();
			var idx = $("input[name=kategorie]").index(this);
			if (radoiValue == "game") {
				$(".job").show();
				$(".job .d_radio").hide();
				$(".job .d_radio").eq(idx).show();
				$("input:radio[name='work']").prop("checked", false);
			} else if (radoiValue == "music") {
				$(".job").show();
				$(".job .d_radio").hide();
				$(".job .d_radio").eq(idx).show();
				$("input:radio[name='work']").prop("checked", false);
			} else if (radoiValue == "sports") {
				$(".job").show();
				$(".job .d_radio").hide();
				$(".job .d_radio").eq(idx).show();
				$("input:radio[name='work']").prop("checked", false);
			} else if (radoiValue == "computer") {
				$(".job").show();
				$(".job .d_radio").hide();
				$(".job .d_radio").eq(idx).show();
				$("input:radio[name='work']").prop("checked", false);
			} else if (radoiValue == "cook") {
				$(".job").show();
				$(".job .d_radio").hide();
				$(".job .d_radio").eq(idx).show();;
				$("input:radio[name='work']").prop("checked", false);
			} else if (radoiValue == "arts") {
				$(".job").show();
				$(".job .d_radio").hide();
				$(".job .d_radio").eq(idx).show();
				$("input:radio[name='work']").prop("checked", false);
			} else if (radoiValue == "beauty") {
				$(".job").hide();
				$(".job .d_radio").hide();
				$("input:radio[name='work']").prop("checked", false);
			} else if (radoiValue == "drive") {
				$(".job").hide();
				$(".job .d_radio").hide();
				$("input:radio[name='work']").prop("checked", false);
			} else if (radoiValue == "animal") {
				$(".job").hide();
				$(".job .d_radio").hide();
				$("input:radio[name='work']").prop("checked", false);
			} else if (radoiValue == "plant") {
				$(".job").hide();
				$(".job .d_radio").hide();
				$("input:radio[name='work']").prop("checked", false);
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