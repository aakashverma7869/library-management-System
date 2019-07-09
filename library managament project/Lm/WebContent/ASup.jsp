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
String name =(String)request.getParameter("name");
String id =(String)request.getParameter("eid");
String yoj =(String)request.getParameter("year");

String contact =(String)request.getParameter("contact");
String mail =(String)request.getParameter("mail");
String pass =(String)request.getParameter("password");
String gender =(String)request.getParameter("gender");
String dob =(String)request.getParameter("adob");
String address =(String)request.getParameter("address");

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



String qry = "INSERT INTO `admin`(`name`, `id`, `contact_no`, `email`, `year`, `pass`,`address`, `gender`, `dob`) VALUES ('"+name+"','"+id+"','"+contact+"','"+mail+"','"+yoj+"','"+address+"','"+gender+"','"+dob+"','"+pass+"')";
int c = st.executeUpdate(qry);

if ( c == 1 )
{
	
	
	
response.sendRedirect("Success.html");	

}

else{
	
	
	
	
	response.sendRedirect("AdminMenu.jsp");	

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