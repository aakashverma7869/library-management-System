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
String roll = (String)request.getParameter("roll");
String name = (String)request.getParameter("name");


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

String qry = "Select * from regi where student_id = '"+roll+"'";
rs = st.executeQuery(qry);




%>
<h2 class="ok">Student Record</h2>
   <div class="row">
   
   
    <div class="column"><h3>Roll Number:<%=roll %></h3></div>
   </div>
<table>
  <tr>
    <th>Book Name</th>
    <th>Issue Date</th>
    <th>Return Date</th>
    <th>Status</th>
      <th>Regester Id</th>
  </tr>
  
<% 
while(rs.next()){
String n =(String)rs.getString("book_name");
String issue =(String)rs.getString("date_of_issue");
String ret =(String)rs.getString("returndate") ; 
String stat =(String)rs.getString("returnstatus");
String code =(String)rs.getString("regesterid");

		%> 
	<tr>
    <td><%=n %></td>
    <td><%=issue %></td>
    <td><%=ret %></td>
    <td><%=stat %></td>
     <td><%=code %></td>
    </tr>

			
<%

}


%>  

 
</table>


 <a  href='AdminMenu.jsp'> Goto Admin Menu</a>
   <h3>Fine Record</h3>
   <table>
     <tr>
        <th>Book Name</th>
        <th>Book ID</th>
        <th>Fine Due</th>
  
     </tr>
     <tr>
        <td>Python</td>
        <td>76327</td>
        <td>101</td>

     </tr>





   </table>



<%


}
catch(ClassNotFoundException e1){
	 
}
%>

</body>
</html>