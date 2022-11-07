<%@ page contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title> 데이타 받는 페이지 </title>
</head>
<body>
<!-- String param = request.getParameter("data");
	 session.
	 -->

파라메터 값(전 페이지에서 넘어오는 값) : ${param.data}<br/> 

<!-- *******JSP에서 session을 그냥 가져오면 충돌이 일어나기 때문에 Scope를 붙여준다******** -->
세션의 값 : ${sessionScope.login}<br/>
쿠키의 값 : ${cookie.isFlag.value}	 <br/>


<hr>


</body>
</html>