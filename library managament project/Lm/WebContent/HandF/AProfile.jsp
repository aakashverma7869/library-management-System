<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body><%
String eid = (String)session.getAttribute("eid");
String name = (String)session.getAttribute("aname");
String year = (String)session.getAttribute("year");


String address = (String)session.getAttribute("address");
String gender = (String)session.getAttribute("gender");
String email = (String)session.getAttribute("email");


String contact = (String)session.getAttribute("contact");

%>
<div class="container">
    <div class="span3 well"  style="background-color:#9DCEFD;">
        <center>
        <a href="#aboutModal" data-toggle="modal" data-target="#myModal"><img src="images/1.jpeg" name="aboutme" width="140" height="140" class="img-circle"></a>
        <h3><%=name %></h3>
        <em><%=eid %></em><br>
         <A class="btn btn-md btn-primary" href="${pageContext.request.contextPath}/AdminMenu.jsp" >Menu</A>
         <A class="btn btn-md btn-success" href="${pageContext.request.contextPath}/edit.html" >Edit Profile</A>
         <a  class="btn btn-md btn-danger" href ="${pageContext.request.contextPath}/Logout.jsp">Logout</a>
    

     
		</center>
    </div>

</div>
</body>
</html>