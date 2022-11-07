<%@ page language="java" contentType="text/html; charset=utf-8"%>
 <%@ page import="mybatis.guest.model.Comment" %>   
 <%@ page import="mybatis.guest.service.CommentService" %>   
   
      
  <!-- 키에 해당하는 글번호를 넘겨받아 서비스의 메소드 호출  -->
  <% 
  int commentNo = Integer.parseInt( request.getParameter("cId"));
  Comment comment = CommentService.getInstance().selectCommentByPrimaryKey(commentNo);
  %>
     
<!DOCTYPE HTML>
<html>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>

<script type="text/javascript">
$(function(){
	$('#btnDelete').click(function(){
		location.href="deleteCommentSave.jsp?commentNo=<%=  comment.getCommentNo()%>";
	})	
})
</script>

<script type="text/javascript">
$(function(){
	$().click(function(){
		lacation.href="modifyCommentSave.jsp?"
	})
})
</script>

<head>
	<meta charset="UTF-8">
<title> 메세지 보기 </title>
</head>
<body>
<table border="1">
		<tr><td>작성자</td><td><%=  comment.getCommentNo()%></td></tr>
		<tr><td>메세지</td><td><%=  comment.getCommentContent()%></td></tr>
		<tr><td>등록일</td><td><%=  comment.getRegDate()%></td></tr>
		<tr><td colspan="2">
				<input type="button" id="btnModify" value="수정" />
				<input type="button" id="btnDelete" value="삭제" />
				</td></tr>
</table>
</body>
</html>