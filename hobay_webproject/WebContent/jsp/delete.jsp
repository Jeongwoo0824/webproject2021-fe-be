<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/common.css" />
<link rel="stylesheet" type="text/css" href="../css/qna.css" />
<script>
	function deleteCheck() {
		var form = document.deleteform;

		if (!form.password.value) {
			alert("��й�ȣ �Է�");
			form.password.focus();
			return;
		}
		form.submit();
	}
</script>
<%
int idx = Integer.parseInt(request.getParameter("idx"));
%>
<title>�Խ���</title>
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
			<li><a href="../hobay_event.html">�̺�Ʈ</a></li>
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
		<form name=deleteform method=post
			action="delete_finish.jsp?idx=<%=idx%>">
			<tr>
				<td>
					<table>
						<tr>
							<td align="center">��й�ȣ</td>
							<td><input name="password" type="password" size="50"
								maxlength="100"></td>
						</tr>
					</table>
					<div id="indexbutton">
						<input type=button value="����" OnClick="javascript:deleteCheck();">
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
