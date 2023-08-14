<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<title>게시판</title>
<link rel="stylesheet" type="text/css" href="../css/common.css" />
<link rel="stylesheet" type="text/css" href="../css/qna.css" />
</head>
<body>
	<div id="mainmenu">
		<a href="../hobay_main.html"> <span class="mainlogo">Hoseo
				Bakery</span>
		</a>
		<ul class="menu">
			<li><a href="../hobay_cake.html">메뉴소개</a>
				<ul class="sub">
					<li><a href="../hobay_drink.html">음료</a></li>
					<li><a href="#">케이크</a></li>
					<li><a href="#">빵</a></li>
				</ul></li>
			<li><a href="../hobay_event.html">이벤트</a></li>
			<li><a href="../hobay_membership.html">멤버십</a></li>
			<li><a href="../hobay_way.html">오시는길</a></li>
			<li><a href="list.jsp">QnA</a></li>
		</ul>
	</div>

	<div id="subbanner">
		<img src="../image/subbanner3.jpg" />
		<div class="inimg">
			<h2>HOBAY 게시판</h2>
			<hr />
			<p>HOBAY는 고객의 의견이 가장 중요합니다.</p>
		</div>
	</div>

	<div id="titletext">
		<h2>게시판</h2>
		<hr>
	</div>
	<%
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String id = "hobayboard";
	String pw = "1234";
	int idx = Integer.parseInt(request.getParameter("idx"));

	try {
		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url,id,pw);
		Statement stmt = conn.createStatement();

		String sql = "SELECT USERNAME, TITLE, MEMO, TIME FROM board WHERE NUM=" + idx;
		ResultSet result = stmt.executeQuery(sql);

		if (result.next()) {
			String name = result.getString(1);
			String title = result.getString(2);
			String memo = result.getString(3);
			String time = result.getString(4);
	%>
	<table>
		<tr>
			<td>
				<table class="tablestyle">
					<tr>
						<td align="center" width="76">글번호</td>
						<td width="319"><%=idx%></td>
					</tr>
					<tr height="1" bgcolor="#dddddd">
						<td colspan="4" width="407"></td>
					</tr>
					<tr>
						<td align="center" width="76">이름</td>
						<td width="319"><%=name%></td>
					</tr>
					<tr height="1" bgcolor="#dddddd">
						<td colspan="4" width="407"></td>
					</tr>
					<tr>
						<td align="center" width="76">작성일</td>
						<td width="319"><%=time%></td>
					</tr>
					<tr height="1" bgcolor="#dddddd">
						<td colspan="4" width="407"></td>
					</tr>
					<tr>
						<td align="center" width="76">제목</td>
						<td width="319"><%=title%></td>
					</tr>
					<tr height="1" bgcolor="#dddddd">
						<td colspan="4" width="407"></td>
					</tr>
					<tr>
						<td width="399" colspan="2" height="200"><%=memo%>
					</tr>
					<%
					result.close();
					conn.close();
					}
					} catch (SQLException e) {
					}
					%>
					<tr height="1" bgcolor="#dddddd">
						<td colspan="4" width="407"></td>
					</tr>
					<tr height="1" bgcolor="#82B5DF">
						<td colspan="4" width="407"></td>
					</tr>
					<tr align="center">
						<td colspan="2" width="399"><input type=button value="목록"
							OnClick="window.location='list.jsp'"> <input type=button
							value="삭제" OnClick="window.location='delete.jsp?idx=<%=idx%>'">
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<div id="footer">
		<p class="logo">hoseo bakery</p>
		<span>충청남도 아산시 배방읍 세출리 225-4 HOBAY 아산호서대점</span> <span>041-540-5114</span>
		<p class="copyright">&copy; 2021 HOSEO BAKERY COMPANY. ALL RIGHTS
			RESERVED..</p>
	</div>
</body>
</html>