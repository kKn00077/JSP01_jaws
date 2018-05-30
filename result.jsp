<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.nio.charset.Charset"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
/*progress {  
    background-color: #ffffff;  
    border: 1px solid lightgray;  
    height: 18px;  
    border-radius: 9px;  
} */ 

progress {
	background-color: #ffffff;  
    height: 18px;  
    border-radius: 9px;  
}  
progress::-webkit-progress-bar {  
    background-color: #ffffff;
    border: 1px solid lightgray;  
    height: 18px;  
    border-radius: 9px;  
}  
progress::-webkit-progress-value {  
    height: 17px;  
    border-radius: 9px;  
}
</style>
</head>
<body>

<%
try{
String filePath = application.getRealPath("/WEB-INF")+"/";
BufferedReader read=new BufferedReader(new InputStreamReader(new FileInputStream(filePath+"survey.txt"),Charset.forName("UTF-8")));
String str;
int count=0;
int surveycount[]={0,0,0,0,0,0};

while((str=read.readLine())!=null){
	count++;
	switch(str){
	case "1" : str="1시간 미만"; surveycount[0]++; break;
	case "2" : str="2시간 ~ 3시간 "; surveycount[1]++; break;
	case "3" : str="3시간 ~ 4시간"; surveycount[2]++; break;
	case "4" : str="4시간 ~ 5시간"; surveycount[3]++; break;
	case "5" : str="5시간 이상"; surveycount[4]++; break;
	case "no" : str="사용하지 않음 / 휴대폰이 없음"; surveycount[5]++; break;
	}
	
	out.println(count+". "+str+"<br>");
}
%>
<br>
총 설문조사 인원 : <%= count %>명<br><br>

1시간 미만을 선택한 인원 수 : <progress value=<%=surveycount[0]%> max=<%=count %>></progress> <%= surveycount[0] %>명 <br>
2시간 ~ 3시간을 선택한 인원 수 : <progress value=<%=surveycount[1]%> max=<%=count %>></progress> <%= surveycount[1] %>명 <br>
3시간 ~ 4시간을 선택한 인원 수 : <progress value=<%=surveycount[2]%> max=<%=count %>></progress> <%= surveycount[2] %>명 <br>
4시간 ~ 5시간을 선택한 인원 수 : <progress value=<%=surveycount[3]%> max=<%=count %>></progress> <%= surveycount[3] %>명 <br>
5시간 이상을 선택한 인원 수 : <progress value=<%=surveycount[4]%> max=<%=count %>></progress> <%= surveycount[4] %>명 <br>
사용하지 않음 / 휴대폰이 없음을 선택한 인원 수 : <progress value=<%=surveycount[5]%> max=<%=count %>></progress> <%= surveycount[5] %>명 <br>
<%
}catch(FileNotFoundException e){
	out.println("설문조사를 한 사람이 없습니다.");
}
%>

</body>
</html>