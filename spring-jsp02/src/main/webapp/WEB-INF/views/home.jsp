<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!public int amount(int a, int b) {
		return a * b;
	}%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>Hello world!</h1>

	<P>The time on the server is ${serverTime}.</P>
	<hr>
	<!-- Scriptlet -->
	<%
	String name = "홍길동";
	int age = 25;
	Date now = new Date();
	%>
	<p>
		현재:
		<%=now%>
	<p>
		이름 :
		<%=name%></p>

	<p>
		나이 :
		<%=age%></p>
	<table border="1">
		<tr>
			<td>번호</td>
			<td>이름</td>
			<td>개수</td>
		</tr>
		<%
		for (int i = 0; i < 5; i++) {
		%>
		<tr>
			<td><%=i%></td>
			<td>TV<%=i%></td>
			<td><%=amount(i, 10)%></td>
		</tr>
		<%
		}
		%>
		<%
		for (int j = 0; j < 5; j++) {
			out.print("<tr>");
			out.print("<td>" + j + "</td>");
			out.print("<td>냉장고" + j + "</td>");
			out.print("<td>" + amount(j, 10) + "</td>");
			out.print("</tr>");
		}
		%>

	</table>

	<hr>
	<a href=jstl_1>[이동]</a>
	<jsp:include page="today.jsp" />
</body>
</html>
