<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ page import="java.util.*" %>
<%
 
  boolean pflag = (boolean)request.getAttribute("pflag");
	
  boolean flag = (boolean)request.getAttribute("flag");
  
%>
<!DOCTYPE html> 
<html> 
<head>
  <title>게시판 생성</title>
  <meta charset="utf-8">
  <script type="text/javascript">
  function list(){
	  let url = 'list.do';
	  url += '?col=<%=request.getParameter("col")%>';
	  url += '&word=<%=request.getParameter("word")%>';
	  url += '&nowPage=<%=request.getParameter("nowPage")%>';
	  
	  location.href= url;
  }
  </script>
</head>
<body> 
<div class="container">
<div class="well well-lg">
	<%
		if(!pflag){
			out.print("잘못된 비밀번호 입니다.");
		}else if(flag){
			out.print("글 삭제 성공 입니다.");
		}else{
			out.print("글 삭제 실패입니다.");
		}
	%>
	
</div>
	<% if(!pflag){%>
	<button class="btn" onclick="history.back()">다시시도</button>
	<% } %>
	
	<button class="btn" onclick="location.href='create.do'">다시등록</button>
	<button class="btn" onclick="list()">목록</button>
</div>
</body> 
</html> 
