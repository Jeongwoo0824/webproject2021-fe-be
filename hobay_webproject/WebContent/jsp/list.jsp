<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="euc-kr">
<title>board</title>
<link rel="stylesheet" type="text/css" href="../css/common.css" />
<link rel="stylesheet" type="text/css" href="../css/qna.css" />

</head>
<body>
	<div id="mainmenu">
		<a href="../hobay_main.html"> <span class="mainlogo">Hoseo
				Bakery</span>
		</a>
		<ul class="menu">
			<li><a href="../hobay_cake.html">�޴��Ұ�</a>
				<ul class="sub">
					<li><a href="../hobay_drink">����</a></li>
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
		<img width="1800" height="500" src="../image/subbanner3.jpg" />
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
	<%
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String id = "hobayboard";
	String pw = "1234";
	int total = 0;
	try {
		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url, id, pw);
		Statement stmt = conn.createStatement();

		String sqlCount = "SELECT COUNT(*) FROM board";
		ResultSet result = stmt.executeQuery(sqlCount);
		if (result.next()) {
			total = result.getInt(1);
		}
		result.close();

		String sqlList = "SELECT NUM, USERNAME, TITLE, TIME from board order by NUM DESC";
		result = stmt.executeQuery(sqlList);
	%>

	<table class="tablestyle">
		<tr height="5">
			<td width="5"></td>
		</tr>
		<tr style="text-align: center">
			<td width="50">��ȣ</td>
			<td width="380">����</td>
			<td width="70">�ۼ���</td>
			<td width="150">�ۼ���</td>
		</tr>
		<%
		if (total == 0) {
		%>
		<td align="center" colspan="6">��ϵ� ���� �����ϴ�.</td>
		<%
		} else {

		while (result.next()) {
			int idx = result.getInt(1);
			String name = result.getString(2);
			String title = result.getString(3);
			String time = result.getString(4);
		%>
		<td><%=idx%></td>
		<td align="left"><a href="view.jsp?idx=<%=idx%>"><%=title%></a></td>
		<td align="center"><%=name%></td>
		<td align="center"><%=time%></td>
		<tr height="1" bgcolor="#D2D2D2">
			<td colspan="5"></td>
		</tr>

		<%
		}
		}
		result.close();
		stmt.close();
		conn.close();
		} catch (SQLException e) {
		out.println(e.toString());
		}
		%>
	</table>

	<table class="tablestyle">
		<tr align="center">
			<td><input type=button value="�۾���"
				Onclick="window.location='write.jsp'"></td>
		</tr>
	</table>

	<div id="footer">
		<p class="logo">hoseo bakery</p>
		<span>��û���� �ƻ�� ����� ���⸮ 225-4 HOBAY �ƻ�ȣ������</span> <span>041-540-5114</span>
		<p class="copyright">&copy; 2021 HOSEO BAKERY COMPANY. ALL RIGHTS
			RESERVED..</p>
	</div>
</body>
</html>