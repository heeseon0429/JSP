<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <!-- 이전 화면에서 사용자 입력값을 얻어와서 
 		- request.getParameter("")
 		- request.getParameterValues("") : 배열
 화면 출력 -->
 
<% 
request.setCharacterEncoding("utf-8");  //한글 처리
String name = request.getParameter("name");
String [] animal = request.getParameterValues("animal");
String chooseAnimal = "";
for(int i=0; animal!=null && i<animal.length; i++){
chooseAnimal +=animal[i];
}
%>

이름 : <%= name %>
동물 : <%= animal %>
</body>
</html>