<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%@ page import="java.sql.*"%>

<%
	request.setCharacterEncoding("euc-kr");
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String id = "hobayboard";
	String pw = "1234";
	String password = null;
	int idx = Integer.parseInt(request.getParameter("idx"));
	String insertpw = request.getParameter("password");  
	
	try {
		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url, id, pw);
		Statement stmt = conn.createStatement();
	
		String sql = "SELECT PASSWORD FROM board WHERE NUM=" + idx; 
		ResultSet result = stmt.executeQuery(sql);
	
		if (result.next()) { 
			password = result.getString(1);
		}
	
		if (password.equals(insertpw)) { 
			sql = "DELETE FROM board WHERE NUM=" + idx; 
			stmt.executeUpdate(sql);
%>
	<script>
		self.window.alert("삭제 완료");
		location.href = "list.jsp";
	</script>

<%
	result.close();
	stmt.close();
	conn.close();
	
	} else {
%>
	<script>
		self.window.alert("비밀번호 오류"); //틀리면 뒤로 감
		location.href = "javascript:history.back()";
	</script>
<%
	}
	} catch (SQLException e) {
	out.println(e.toString());
	}
%>

