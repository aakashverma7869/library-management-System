<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
          <%@ page import="java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
      <%@page import="java.text.SimpleDateFormat"%>
    <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>
<%@ page import = "java.util.*, javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style>

</style>
</head>
<jsp:include page="HandF/Header.jsp"></jsp:include>
<body style="background-color:#DDFEFE;">
<%
String roll = (String)request.getParameter("roll");



String path = application.getInitParameter("path");
String dbid = application.getInitParameter("did");
String dbpass = application.getInitParameter("pass");

int Totalfine = 0;
Date date = new Date();

Statement st=null;
Connection con=null;
ResultSet rs, r=null;

try{
	
	
	

Class.forName("com.mysql.jdbc.Driver");

con=DriverManager.getConnection(path+"library",dbid,dbpass);

st=(Statement) con.createStatement();

String qry = "Select * from regi where student_id = '"+roll+"'";
rs = st.executeQuery(qry);




%>
<h2 align = "center">Student Record</h2>


<div align = "center">
<a href="#" class="btn btn-warning btn-md ">Use Filter</a>
</div><br>
    <table class="table table-striped">
  <tr>
    <th>Book Name</th>
    <th>Issue Date</th>
    <th>Return Date</th>
    <th>Status</th>
      <th>Register Id</th>
      <th> fine </th>
  </tr>
  
<% 
while(rs.next()){
String n =(String)rs.getString("book_name");
String issue =(String)rs.getString("date_of_issue");
String ret =rs.getString("returndate").toString() ; 
String stat =(String)rs.getString("returnstatus");
String code =(String)rs.getString("regesterid");



SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

Date re = sdf.parse(ret);



int Days = (int) ((date.getTime() - re.getTime())/(1000*60*60*24));

int fine = Days*2;

String Dateret = ret.substring(0,10); 
String issuedate = issue.substring(0,10); 

if (fine < 0 )
{ fine  = 0;

}
else {
	Totalfine = Totalfine + fine ;
}

		%> 
	<tr>
    <td><%=n %></td>
    <td><%=issuedate %></td>
    <td><%=Dateret %></td>
    <td><%=stat %></td>
     <td><%=code %></td>
      <td><%=fine %></td>
    </tr>

			
<%

}


%>  

 
</table>
<div align = "center">
<h4>Total Fine : <%=Totalfine %>
</h4>

</div>

<%


}
catch(ClassNotFoundException e1){
	 
}
%>

</body>
<jsp:include page="HandF/Footer.jsp"></jsp:include>
</html>