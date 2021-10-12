<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ page import="java.util.*" %>
<%
  boolean flag = (boolean)request.getAttribute("flag"); 
%>
<!DOCTYPE html> 
<html> 
<head>
  <title>게시판 답변</title>
  <meta charset="utf-8">
</head>
<body> 

<div class="container">
<div class="well well-lg">
	<%
		if(flag){
			out.print("글 답변등록 성공 입니다.");
		}else{
			out.print("글 답변등록 실패입니다.");
		}
	%>
</div>
	<button class="btn" onclick="location.href='create.do'">게시글 등록</button>
	<button class="btn" onclick="location.href='list.do'">목록</button>
</div>
</body> 
</html> 
