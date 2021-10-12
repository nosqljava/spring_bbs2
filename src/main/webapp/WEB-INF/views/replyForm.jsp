<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ page import="model.BbsDTO" %>
<%
	BbsDTO dto = (BbsDTO)request.getAttribute("dto");
%>
 <!DOCTYPE html> 
<html> 
<head>
  <title>homepage</title>
  <meta charset="utf-8">
</head>
<body> 

<div class="container">
<h1 class="col-sm-offset-2 col-sm-10">게시판 답변</h1>
<form class="form-horizontal" 
      action="replyProc.do"
      method="post"
      >
  <input type='hidden' name="grpno" value="<%=dto.getGrpno() %>">
  <input type='hidden' name="indent" value="<%=dto.getIndent() %>">
  <input type='hidden' name="ansnum" value="<%=dto.getAnsnum() %>">
  <input type='hidden' name="bbsno" value="<%=dto.getBbsno() %>">
  
  <div class="form-group">
    <label class="control-label col-sm-2" for="wname">작성자</label>
    <div class="col-sm-6">
      <input type="text" name="wname" id="wname" class="form-control">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="title">제목</label>
    <div class="col-sm-8">
      <input type="text" name="title" id="title" class="form-control" value="<%=dto.getTitle() %>">
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-2" for="content">내용</label>
    <div class="col-sm-8">
    <textarea rows="12" cols="7" id="content" name="content" class="form-control"></textarea>
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-2" for="passwd">비밀번호</label>
    <div class="col-sm-6">
      <input type="password" name="passwd" id="passwd" class="form-control">
    </div>
  </div>
  
   <div class="form-group">
   <div class="col-sm-offset-2 col-sm-5">
    <button class="btn">답변</button>
    <button type="reset" class="btn">취소</button>
   </div>
 </div>
</form>
</div>
</body> 
</html> 
