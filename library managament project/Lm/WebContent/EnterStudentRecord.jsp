<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>      <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String roll = (String)session.getAttribute("roll");

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


}
catch(ClassNotFoundException e1){
	 
}

%>

</body>
</html>