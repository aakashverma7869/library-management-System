<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String rollno =(String)request.getParameter("rollno");
String Pass =(String)request.getParameter("pass");
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



String qry = "Select * from student where roll_no = '"+rollno+"'";
rs = st.executeQuery(qry);
if (!rs.next() ) {
	  out.println("Invalid rollno");
	  %>  <br><a href="StudentSignup.jsp">Try Sign up</a>   <%
	} 
else {
	String n = (String)rs.getString("name");
	String p = (String)rs.getString("pass");
	String mail = (String)rs.getString("email");
	String branch = (String)rs.getString("branch");
	String year = (String)rs.getString("year");
	String dob = (String)rs.getString("dob");
	String gender = (String)rs.getString("gender");
	String address = (String)rs.getString("address");
	String contact = (String)rs.getString("contact");
	
	if( p.equals(Pass)){
		
		session.setAttribute("name",n);
		session.setAttribute("roll",rollno);
		session.setAttribute("email",mail);
		session.setAttribute("branch",branch);
		session.setAttribute("year",year);
		session.setAttribute("dob",dob);
		session.setAttribute("gender",gender);
		session.setAttribute("address",address);
		session.setAttribute("contact",contact);
		response.sendRedirect("StudentMenu.jsp");
	}
	
	else {
		out.print("invalid password ");
		 %> <a href="StudentSignup.jsp">Try Sign up</a>  <br>
		    <a href="StudentLogin.jsp">Try Login again</a>  <br>
		  <%
	}


}


}


catch(ClassNotFoundException e1){
	 
	}

%>

</body>
</html>