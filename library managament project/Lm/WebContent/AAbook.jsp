<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
    display: table;
    border-collapse: separate;
    border-spacing: 3px;
}

td, th {
    border: 2px solid #dddddd;
    text-align: left;
    padding: 10px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}

.ok {

  text-align: center;
  text-decoration: underline;
}

h4 {

  display: inline;
}

.column {
    float: left;
    width: 50%;
}
</style>
</head>
<body>

<%


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
<h2 class="ok">Books Availability</h2>
   
<table>
  <tr>
    <th>Book Name</th>
    <th>Author Name</th>
    <th>Book Number</th>
    <th>Year of Publication</th>
    <th>Category</th>
    <th>Issue Book</th>
  </tr>
  
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
    <td> <a href="Adminissue.jsp">Click Me</a></td>
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

<br><br><br>
<a href ="Logout.jsp">Logout</a>
</body>
</html>