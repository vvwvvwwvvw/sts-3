<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<p> Server to : ${data} </P>
<p> Server to : ${num}  </P>
<hr>

<p> 번호 : ${person1.code }</p>
<p> 이름 : ${person1.strData }</p>
<p> 나이 : ${person1.numData}</p>
<p> 생일 : ${person1.dateData }</p>

<a href="mavCase">[이동]</a>
</body>
</html>
