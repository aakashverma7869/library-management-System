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
String aname =(String)request.getParameter("aname");
String bno =(String)request.getParameter("bno");
String yop =(String)request.getParameter("yop");
String cat =(String)request.getParameter("cat");
String price =(String)request.getParameter("price");
String admin =(String)session.getAttribute("eid");

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



String qry = "INSERT INTO `books`(`book_name`, `author_name`, `book_no`, `year_of_publication`, `category`, `price`, `admin`) VALUES ('"+name+"','"+aname+"','"+bno+"','"+yop+"','"+cat+"','"+price+"','"+admin+"')";
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