<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%@ page import="java.sql.*"%>
<%
	request.setCharacterEncoding("euc-kr");

	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:orcl";
	String id="hobayboard";
	String pw="1234";
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String title = request.getParameter("title");
	String memo = request.getParameter("memo");
	
	try {	
		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url,id,pw);
		
		String sql = "INSERT INTO board(NUM,USERNAME,PASSWORD,TITLE,MEMO) VALUES(num_seq.nextval,?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, name);
		pstmt.setString(2, password);
		pstmt.setString(3, title);
		pstmt.setString(4, memo);
		
		pstmt.execute();
		pstmt.close();
		
		conn.close();
} catch(SQLException e) {
	out.println( e.toString() );
	}
%>
<script>
   self.window.alert("입력한 글을 저장하였습니다.");
   location.href="list.jsp"; 
</script>