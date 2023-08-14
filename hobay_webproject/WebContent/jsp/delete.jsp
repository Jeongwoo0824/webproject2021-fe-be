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
			alert("비밀번호 입력");
			form.password.focus();
			return;
		}
		form.submit();
	}
</script>
<%
int idx = Integer.parseInt(request.getParameter("idx"));
%>
<title>게시판</title>
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
	<table>
		<form name=deleteform method=post
			action="delete_finish.jsp?idx=<%=idx%>">
			<tr>
				<td>
					<table>
						<tr>
							<td align="center">비밀번호</td>
							<td><input name="password" type="password" size="50"
								maxlength="100"></td>
						</tr>
					</table>
					<div id="indexbutton">
						<input type=button value="삭제" OnClick="javascript:deleteCheck();">
						<input type=button value="취소"
							OnClick="javascript:history.back(-1)">
					</div>
				</td>
			</tr>
		</form>
	</table>
	<div id="footer">
		<p class="logo">hoseo bakery</p>
		<span>충청남도 아산시 배방읍 세출리 225-4 HOBAY, 아산호서대점</span> <span>041-540-5114</span>
		<p class="copyright">&copy; 2021 HOSEO BAKERY COMPANY. ALL RIGHTS
			RESERVED..</p>
	</div>
</body>
</html>
