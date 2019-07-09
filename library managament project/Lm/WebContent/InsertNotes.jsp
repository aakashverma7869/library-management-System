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
String path = application.getInitParameter("path");
String dbid = application.getInitParameter("did");
String dbpass = application.getInitParameter("pass");

String File_real_name = (String) session.getAttribute("filename") ;
String file_name=(String)request.getParameter("file_name");
String pa = "f:\\lmfile\\"+File_real_name;
String name = (String) session.getAttribute("aname");

Statement st=null;
Connection con=null;
ResultSet rs=null;

try{
	
	
	

Class.forName("com.mysql.jdbc.Driver");

con=DriverManager.getConnection(path+"library",dbid,dbpass);

st=(Statement) con.createStatement();



String qry = "INSERT INTO `file`(`name`, `facultyname`, `path`, `date`) VALUES ('"+File_real_name+"','"+name+"','"+pa+"','2018-04-01 16:32:28')";
int c = st.executeUpdate(qry);

if (c == 1){
	 response.sendRedirect("NotesUpload.jsp?filename="+file_name);
	
}
}
catch(ClassNotFoundException e1){
	 
	}

%>

</body>
</html>