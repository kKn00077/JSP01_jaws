<%@page import="java.io.File"%>
<%@page import="java.nio.charset.Charset"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.OutputStreamWriter"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="org.apache.coyote.http11.filters.BufferedInputFilter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String survey=request.getParameter("survey");
	
	if(survey.equals("5")){ %>
	
		<h3>핸드폰 중독이 의심되는 경우 이렇게 해보세요.</h3>
		1. 핸드폰 사용량 확인하기<br>
		2. 핸드폰 사용을 계획적으로 하기.<br>
		3. 핸드폰을 적게 사용한 날은 스스로에게 보상하기.<br>
		4. 핸드폰을 사용한 시간을 <strong>천천히</strong> 줄이기.<br>
		5. 핸드폰 치워 놓기.<br>
		6. 핸드폰 사용을 잠시 쉬어보기.<br>
		7. 핸드폰 설정을 바꿔, 받는 알람 줄여보기.<br>
		8. 현재에 더 집중해보기.<br><br>
		
<%	}
	
	String filePath = application.getRealPath("/WEB-INF")+"/";

	//BufferedWriter write=new BufferedWriter(new FileWriter("C:/Users/Mirim/Documents/survey.txt",true));
	
	BufferedWriter write=new BufferedWriter(new OutputStreamWriter(new FileOutputStream(filePath+"survey.txt",true),Charset.forName("UTF-8")));
	
	write.write(survey+"\r\n");
	
	write.close();
	
	/*
	//Create a file object 
	File file = new File(filePath+"survey.txt"); 
	
	// 1. check if the file exists or not 
	boolean isExists = file.exists(); 
	if(isExists) 
	{ out.println("<script>alert('I find the survey.txt')</script>"); } 
	else { out.println("<script>alert('No, there is not a no file.')</script>"); }
	*/

	//out.println("<script>alert('"+filePath+"');</script>");
	
%>
설문에 응해주셔서 감사합니다.
<a href="index.jsp">홈으로</a>
</body>
</html>