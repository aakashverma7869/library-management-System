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
String id =(String)request.getParameter("id");
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



String qry = "Select * from admin where id = '"+id+"'";
rs = st.executeQuery(qry);
if (!rs.next() ) {
	  out.println("Invalid id");
	  %>  <br><a href="StudentSignup.jsp">Try Login Again</a>   <%
	} 
else {
	String n = (String)rs.getString("name");
	String i = (String)rs.getString("id");
	String p = (String)rs.getString("pass");
	String address = (String)rs.getString("address");
	String contact = (String)rs.getString("contact_no");
	String email = (String)rs.getString("email");
	String year = (String)rs.getString("year");
	String gender = (String)rs.getString("gender");
	
	
	if( p.equals(Pass)){
		
		session.setAttribute("aname",n);
		session.setAttribute("eid",id);
		session.setAttribute("email",email);
		session.setAttribute("contact",contact);
		session.setAttribute("year",year);
		session.setAttribute("gender",gender);
		session.setAttribute("address",address);
		response.sendRedirect("AdminMenu.jsp");
	}
	
	else {
		out.print("invalid password ");
		 %> 
		    <a href="Adminlogin.jsp">Try Login again</a>  <br>
		  <%
	}


}



}


catch(ClassNotFoundException e1){
	out.print(e1);	
	}
catch(SQLException e1){ 	
	out.print(e1);
}
catch(NullPointerException e){
	out.print(e);
}
catch(Exception ex){
	out.print(ex);
}



%>

</body>
</html>