<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JSTL 기본 사용법</h1>
	<h2>변수 활용</h2>
	<c:set var="num1" value="10" />
	<c:out value="num1" />
	<p>num1 : ${num1}</p>
	<h2>제어문</h2>
	<h3>if</h3>
	<p>자바의 if 문과 동일한 기능을 수행 단 else문은 없음</p>
	<c:set var="name" value="user01" />
	<c:if test="${name != null }">${name }님, 반갑습니다.</c:if>
	<br>
	<c:if test="${name == null }">Guest님, 반갑습니다</c:if>
	<c:if test="${empty name }"></c:if>

	<hr>
	<h3>choose, when , otherwise</h3>
	<c:choose>
		<c:when test="${user == 0 }">
			<p>관리자님 반갑습니다</p>
		</c:when>
		<c:when test="${user == 1 }">
			<p>사용자님 반갑습니다</p>
		</c:when>
		<c:otherwise>
			<p>처음뵙겠습니다</p>
		</c:otherwise>
	</c:choose>
	<hr>
	<h2>forEach</h2>
	<h3>기본 형식</h3>
	<c:forEach var="f" begin="1" end="5" step="2">
		<font size="${f}">안녕하세요</font>
		<br>
	</c:forEach>
	<h3>목록 출력 형식</h3>
	<ul>
		<c:forEach var="mitem" items="${menu}" varStatus="st">
			<c:choose>
				<c:when test="${st.first}">
					<li style="color: red;">${st.index}-${st.count} : ${mitem}</li>
				</c:when>
				<c:when test="${st.count % 2 == 0}">
					<li style="color: blue;">${st.index}-${st.count} : ${mitem}</li>
				</c:when>
				<c:otherwise>
					<li>${st.index}-${st.count} : ${mitem}</li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	</ul>
	
	<a href = "today">[이동]</a>
</body>


</html>