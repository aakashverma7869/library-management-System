<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BookAvaillity</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style>

</style>
</head>
<jsp:include page="HandF/Header.jsp"></jsp:include>
<body style="background-color:#DDFEFE;">


<%
String roll = (String)session.getAttribute("roll");
String name = (String)session.getAttribute("name");
String branch = (String)session.getAttribute("branch");
String path = application.getInitParameter("path");
String dbid = application.getInitParameter("did");
String dbpass = application.getInitParameter("pass");

Statement st=null;
Connection con=null;
ResultSet rs=null;

try{
	
	
	

Class.forName("com.mysql.jdbc.Driver");

con=DriverManager.getConnection(path+"library",dbid,dbpass);

st=(Statement) con.createStatement();

String qry = "Select * from books ";
rs = st.executeQuery(qry);




%>
<h2  align = "center" >Books Availability</h2>
<jsp:include page="HandF/SProfile.jsp"></jsp:include>



<div align = "center">
<a href="#" class="btn btn-warning btn-md ">Use Filter</a>
</div> <br>
    <table class="table table-striped">
    <thead> 
  <tr>
    <th>Book Name</th>
    <th>Author Name</th>
    <th>Book Number</th>
    <th>Year of Publication</th>
    <th>Category</th>
    <th>Issue Book</th>
     <th>Book Description</th>
  </tr>
  </thead>
<% 
while(rs.next()){
String n =(String)rs.getString("book_name");
String author =(String)rs.getString("author_name");
String bn = (String)rs.getString("book_no");
String yop =(String)rs.getString("year_of_publication");
String cat =(String)rs.getString("category") ; 


		%> 
	<tr>
    <td><%=n %></td>
    <td><%=author %></td>
    <td><%=bn %></td>
    <td><%=yop %></td>
    <td><%=cat %></td>
    <td> <a class='btn btn-danger btn-xs' href="issue.jsp?r=<%=roll%>&b=<%=bn%>&n=<%=n%>">Click Me</a></td>
    <td> <a class='btn btn-info btn-xs' href="aboutbook.jsp?&b=<%=bn%>">About Book</a></td>
    </tr>

			
<%

}


%>  

 
</table>

<%


}
catch(ClassNotFoundException e1){
	 
}
%>


</body>
<jsp:include page="HandF/Footer.jsp"></jsp:include>
</html>