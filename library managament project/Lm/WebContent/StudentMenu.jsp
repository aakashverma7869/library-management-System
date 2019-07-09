<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Profile</title>
<style type="text/css">
.user-row {
    margin-bottom: 14px;
}

.user-row:last-child {
    margin-bottom: 0;
}

.dropdown-user {
    margin: 13px 0;
    padding: 5px;
    height: 100%;
}

.dropdown-user:hover {
    cursor: pointer;
}

.table-user-information > tbody > tr {
    border-top: 1px solid rgb(221, 221, 221);
}

.table-user-information > tbody > tr:first-child {
    border-top: 0;
}


.table-user-information > tbody > tr > td {
    border-top: 0;
}
.toppad
{margin-top:20px;
}


</style>
</head>
<jsp:include page="HandF/Header.jsp"></jsp:include>
<body style="background-color:#DDFEFE;">
<%
request.getSession();
String roll = (String)session.getAttribute("roll");
String name = (String)session.getAttribute("name");
String dob = (String)session.getAttribute("dob");


String address = (String)session.getAttribute("address");
String gender = (String)session.getAttribute("gender");
String email = (String)session.getAttribute("email");
String year = (String)session.getAttribute("year");
String branch = (String)session.getAttribute("branch");
String contact = (String)session.getAttribute("contact");





%>
<div class="container">
      <div class="row">
      <div class="col-md-5  toppad  pull-right col-md-offset-3 ">
           <A class="btn btn-md btn-success" href="StudentEdit.jsp" >Edit Profile</A>

        <a  class="btn btn-md btn-danger" href ="Logout.jsp">Logout</a>
       <br>

      </div>
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
   
   
          <div class="panel panel-info">
            <div class="panel-heading">
              <h3 class="panel-title">Student Profile</h3>
            </div>
            <div class="panel-body">
              <div class="row">
                <div class="col-md-3 col-lg-3 " align="center"> <img alt="User Pic" src="images/1.jpeg" class="img-circle img-responsive"> </div>
               
               
               
               
                <div class=" col-md-9 col-lg-9 "> 
                  <table class="table table-user-information">
                    <tbody>
                    <tr>
                        <td>Name:</td>
                        <td><%= name%></td>
                      </tr>
                      <tr>
                        <td>Department:</td>
                        <td><%= branch %></td>
                      </tr>
                      <tr>
                        <td>Roll Number:</td>
                        <td><%= roll  %></td>
                      </tr>
                      <tr>
                        <td>Date of Birth</td>
                        <td><%= dob %></td>
                      </tr>
                       <tr>
                        <td>Year</td>
                        <td><%= year %></td>
                      </tr>
                         <tr>
                             <tr>
                        <td>Gender</td>
                        <td><%= gender %></td>
                      </tr>
                        <tr>
                        <td>Home Address</td>
                        <td><%= address %></td>
                      </tr>
                      <tr>
                        <td>Email</td>
                        <td><%= email %></td>
                      </tr>
                      <tr>
                        <td>Contact Number</td>
                        <td><%= contact %></td>
                      </tr>
                      
                     
                     
                    </tbody>
                  </table>
                  
                  <a href="StudentRecord.jsp" class="btn btn-primary">Student Record</a>
                  <a href="BookAvailability.jsp" class="btn btn-primary">Book Availability</a>
                </div>
              </div>
            </div>
                 <div class="panel-footer">
                        <a  data-toggle="tooltip" title="Circulers/Notices" type="button" class="btn btn-sm btn-primary"><i class="glyphicon glyphicon-envelope"></i></a>
                        <span class="pull-right">
                            <a href="edit.html"  data-toggle="tooltip" title="Edit Profile" type="button" class="btn btn-sm btn-warning"><i class="glyphicon glyphicon-edit"></i></a>
                            <a href="Logout.jsp"  data-toggle="tooltip" title="Logout" type="button" class="btn btn-sm btn-danger"><i class="glyphicon glyphicon-remove"></i></a>
                        </span>
                    </div>
            
          </div>
        </div>
      </div>
    </div>
















</body>
<jsp:include page="HandF/Footer.jsp"></jsp:include>
</html>