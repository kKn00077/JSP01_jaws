<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>핸드폰 사용시간 조사</h1>

<form method="post" action="success.jsp">

<label for="1"><input type="radio" name="survey" id="1" value="1" checked> 1시간 미만 </label><br>
<label for="2"><input type="radio" name="survey" id="2" value="2"> 2시간 ~ 3시간 <br>
<label for="3"><input type="radio" name="survey" id="3" value="3"> 3시간 ~ 4시간 <br>
<label for="4"><input type="radio" name="survey" id="4" value="4"> 4시간 ~ 5시간 <br>
<label for="5"><input type="radio" name="survey" id="5" value="5"> 5시간 이상 <br>
<label for="no"><input type="radio" name="survey" id="no" value="no"> 사용하지 않음 / 휴대폰이 없음 <br><br>

<input type="submit" value="설문 완료">

</form>


</body>
</html>