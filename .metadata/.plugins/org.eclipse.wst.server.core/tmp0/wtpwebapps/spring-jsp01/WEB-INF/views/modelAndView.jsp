<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>${sec_data}</h1>

<a href="send?id=user&num1=1234&num2=73">[전송]</a>

<hr>

<form action="login" method="post">
	<input type="text" name="id" placeholder="아이디"><br>
	<input type="password" name="pwd" placeholder="비밀번호"><br>
	<input type="submit" value="로그인">
</form>
<hr>
<input type="text" id="id_in"><br>
<input type="password" id="pw_in"><br>
<button id= "lbtn">login</button>
<hr>

<h2>DTO를 활용한 전송</h2>
<form action="dtoSend" method="post">
<input type = "number" name="code" placeholder="번호"><br>
<input type = "text" name="strData" placeholder="이름"><br>
<input type = "number" name="numData" placeholder="나이"><br>
<input type = "date" name="dateData" placeholder="생일"><br>
<input type="submit" value="전송">
</form>
</body>
<script type="text/javascript">
const idinput = document.querySelector("#id_in");
const pwinput = document.querySelector("#pw_in");
const logbtn = document.querySelector("#lbtn");


logbtn.onclick = function(){
	let idv = idinput.value;
	let pwd = pwinput.value;
	let str = "login?id=" +idv + "&pwd=" +pwd;
	location.href=str;
}
</script>
</html>