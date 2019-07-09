<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>  
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> 
  <style>
.ds-btn li{ list-style:none; float:left; padding:10px; }


</style>
</head>
<jsp:include page="HandF/Header.jsp"></jsp:include>
<body style="background-color:#DDFEFE;">


<div class="container" align = "center">
	<div class="row ">
     
    <ul class="ds-btn">
    
        <li>
        
             <a class="btn btn-lg btn-primary" href ="StudentLogin.jsp">
          <i class="glyphicon glyphicon-user pull-left"></i><span>Student Login<br><small></small></span></a> 
           </li>
           <li> 
        
             <a class="btn btn-lg btn-success "href ="Adminlogin.jsp">
         <i class="glyphicon glyphicon-dashboard pull-left"></i><span>Admin Login<br><small></small></span></a> 
            </li>
           <li> 
       
             <a class="btn btn-lg btn-danger" href="TeacherLogin.jsp">
         <i class="glyphicon glyphicon-tasks pull-left"></i><span>Faculty Login<br><small></small></span></a> 
            </li>
           <li> 
       
               <a class="btn btn-lg btn-warning" href="#">
        <i class="glyphicon glyphicon-search pull-left"></i><span>Search Books<br><small></small></span></a> 
       </li>
           <li> 
               <a class="btn btn-lg btn-info" href="CheckFine.jsp">
         <i class="glyphicon glyphicon-list pull-left"></i><span>Check Fine<br><small></small></span></a> 
        </li>
    </ul>
    
	</div>
</div>



</body>
<jsp:include page="HandF/Footer.jsp"></jsp:include>
</html>

