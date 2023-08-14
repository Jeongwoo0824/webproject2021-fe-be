<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="euc-kr">
<title>board</title>
<link rel="stylesheet" type="text/css" href="../css/common.css" />
<link rel="stylesheet" type="text/css" href="../css/qna.css" />
<script>
	function writeCheck() {
		var form = document.writeform;
		if (!form.name.value) {
			alert("�̸��� �Է��ϼ���");
			form.name.focus();
			return;
		}
		if (!form.password.value) {
			alert("��й�ȣ�� �Է��ϼ���");
			form.password.focus();
			return;
		}
		if (!form.title.value) {
			alert("������ �Է��ϼ���");
			form.title.focus();
			return;
		}
		if (!form.memo.value) {
			alert("������ �Է��ϼ���");
			form.memo.focus();
			return;
		}

		form.submit();
	}
</script>
</head>
<body>
	<div id="mainmenu">
		<a href="../hobay_main.html"> <span class="mainlogo">Hoseo
				Bakery</span>
		</a>
		<ul class="menu">
			<li><a href="../hobay_cake.html">�޴��Ұ�</a>
				<ul class="sub">
					<li><a href="../hobay_drink.html">����</a></li>
					<li><a href="#">����ũ</a></li>
					<li><a href="#">��</a></li>
				</ul></li>
			<li><a href=".../hobay_event.html">�̺�Ʈ</a></li>
			<li><a href="../hobay_membership.html">�����</a></li>
			<li><a href="../hobay_way.html">���ô±�</a></li>
			<li><a href="list.jsp">QnA</a></li>
		</ul>
	</div>

	<div id="subbanner">
		<img src="../image/subbanner3.jpg" />
		<div class="inimg">
			<h2>HOBAY �Խ���</h2>
			<hr />
			<p>HOBAY�� ���� �ǰ��� ���� �߿��մϴ�.</p>
		</div>
	</div>

	<div id="titletext">
		<h2>�Խ���</h2>
		<hr>
	</div>
	<table>
		<form name=writeform method=post action="write_finish.jsp">
			<tr>
				<td>
					<table class="tablesytle">
						<tr align="center">
							<td>�۾���</td>
						</tr>
					</table>
					<table>
						<tr>
							<td align="center" width="76">����</td>
							<td colspan="3"><input name="title" size="130"
								maxlength="100"></td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4"></td>
						</tr>
						<tr>
							<td align="center" width="76">�̸�</td>
							<td><input name="name" size="50" maxlength="50"></td>
							<td align="center" width="76">��й�ȣ</td>
							<td><input name="password" size="50" maxlength="50"></td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4"></td>
						</tr>
						<tr>
							<td align="center">����</td>
							<td colspan="3"><textarea name="memo" cols="130" rows="13"></textarea></td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4"></td>
						</tr>
						<tr height="1" bgcolor="#82B5DF">
							<td colspan="4"></td>
						</tr>

					</table>
					<div id="indexbutton">
						<input type=button value="���" OnClick="javascript:writeCheck();">
						<input type=button value="���"
							OnClick="javascript:history.back(-1)">
					</div>
				</td>
			</tr>
		</form>
	</table>
	<div id="footer">
		<p class="logo">hoseo bakery</p>
		<span>��û���� �ƻ�� ����� ���⸮ 225-4 HOBAY, �ƻ�ȣ������</span> <span>041-540-5114</span>
		<p class="copyright">&copy; 2021 HOSEO BAKERY COMPANY. ALL RIGHTS
			RESERVED..</p>
	</div>
</body>
</html>