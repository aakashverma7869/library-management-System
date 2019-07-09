<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>  
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> 

<style> .btn-insta, .btn-insta :active, .btn-insta:visited {
    background-color: #cd486b;
}

.btn-insta:hover{
 background-color:   #8a3ab9;
}

 .btn-fb, .btn-fb :active, .btn-fn:visited {
    background-color: #4e69a2 ;
}

.btn-fb:hover{
 background-color: #3b5998  ;
}


 .btn-twi, .btn-twi :active, .btn-twi:visited {
    background-color: #1dcaff ;
}

.btn-twi:hover{
 background-color: #00aced ;
}

.text-bt {
color: white ;
}

.text-bt:hover {
color: white ;
}


</style>
</head>


<jsp:include page="Header.jsp"></jsp:include>
<body>
<div align = "center">

<h4><strong> Coming Soon  </strong></h4>
<br>
 <a href="https://www.facebook.com/KEC2004"><button class="btn btn-lg btn-fb text-bt"> <i class="fa fa-facebook fa-2x"></i>acebook</button></a>

 <a href="https://www.youtube.com/c/KECGhaziabadOfficial"><button class="btn btn-lg btn-insta text-bt" > <i class="fa fa-youtube fa-2x"></i>Youtube</button></a>  
 
 <a href="https://twitter.com/KrishnaCollege"><button class="btn btn-lg btn-twi text-bt"> <i class="fa fa-twitter fa-2x"></i>Twitter</button></a>

</div>
</body>
<jsp:include page="Footer.jsp"></jsp:include>
</html>