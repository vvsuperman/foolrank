<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
	String path = request.getContextPath();
	pageContext.setAttribute("path", path);
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	
%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html lang="en">
<head>
<meta charset="utf-8">
	<title>Uunemo</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

	<!-- Le styles -->
	<link href="<%=path%>/resources/css/bootstrap.css" rel="stylesheet">
	<link href="<%=path%>/resources/css/common.css" rel="stylesheet">
    <link href="<%=path%>/resources/css/quiz.css" rel="stylesheet">
    <link href="<%=path%>/resources/css/line/aero.css" rel="stylesheet">
	<style type="text/css">
body {
	padding-top: 60px;
	padding-bottom: 40px;
}
</style>
	
</head>

<body class="commonBody">

<!--   nav bar -->

<jsp:include page="navbar.jsp" />
<!-- main img -->
<jsp:include page="mainimg.jsp" /> 
    
    <div class ="container-fluid">
      <div class="row-fluid">
       <div class="span9">
        <div class="mainquiz">
         <div class="quizinfo" id="quizinfo">
            <p class="lead">${quizinfo}</p>
         <div class="row">
           <div class="span2 offset9">
             <button class="btn btn-large btn-primary" id="letsbegin" type="button">开始做题</button>
           </div>    
         </div>
         </div>
      
        <div class="takequiz" id="takequiz" style="display:none">
         
         <div class="optionplane" id="optionplane" style="display:none">
          <p class="lead" id="questioncontent">quizcontent</p>      
          <ul class="options">
            
            <li id="option0" style="display:none">
              <input type="checkbox" id="checkbox1"></input>
              <label id="content">11</label>
            </li>
            
            <li id="option1" style="display:none">
              <input type="checkbox" id="checkbox2" name="checkbox2" value="checkbox"></input>
              <label>12</label>
            </li>
            
            <li id="option2" style="display:none">
              <input type="checkbox" name="checkbox3" value="checkbox"></input>
              <label>13</label>
            </li> 
            
            <li id="option3"  style="display:none">
              <input type="checkbox" name="checkbox4" value="checkbox"></input>
              <label>14</label>
            </li>
            
            <li id="option4"  style="display:none">
              <input type="checkbox" name="checkbox5" value="checkbox"></input>
              <label>15</label>
            </li>
            
            <li id="option5"  style="display:none">
              <input type="checkbox" name="checkbox6" value="checkbox"></input>
              <label>16</label>
            </li>
           
           </ul> 
           <label id="optionnum" style="display:none"></label>
           <div class="row-fluid">
            <div class="span2 offset2">
             <button class="btn btn-large" id="nextquestion" type="button">下一题</button>
            </div>
            <div class="span2 offset4">
             <button class="btn btn-large" type="button">结束</button>
            </div> 
           </div>
          </div>
         </div>
        </div>
       </div>
       
       <div class="span3 ">
          <div class="quizright">
           <div class="scorezone">
              <div class="progress">
					  <div class="bar" id="scorebar" style="width: 0%;"></div>
					</div>
					  <h3 id="userscore"></h3>
					<div >
           
           </div>
            
          
          </div>
       </div>
      </div>
    </div>
    
	<div class="container">
		<footer>
		<p>&copy;Uunemo Company 2013</p>
		</footer>
	</div>
	
	
  
   <!-- Placed at the end of the document so the pages load faster -->
   <script src="<%=path%>/resources/js/jquery-1.9.1.js"></script>
   <script src="<%=path%>/resources/js/bootstrap.js"></script>
   <script src="${path}/resources/js/initClient.js" type="text/javascript"></script>
   <script src="<%=path%>/resources/js/jquery.icheck.js"></script>
   <script src="<%=path%>/resources/js/quiz.js"></script>
  </body>
</html>


