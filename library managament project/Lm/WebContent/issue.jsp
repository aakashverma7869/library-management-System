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
</head>
<jsp:include page="HandF/Header.jsp"></jsp:include>
<body style="background-color:#DDFEFE;">
<jsp:include page="HandF/SProfile.jsp"></jsp:include>
<% 

String roll = (String)request.getParameter("r");
String name = (String)request.getParameter("n");
String book = (String)request.getParameter("b");

String sesid = session.getId();
 String x = sesid.substring(3,5);
 String y = sesid.substring(11,13);
 Random rand = new Random();
 int num = rand.nextInt(90000) + 10000;
 
 String id = x+y+num;
 Date ret;
 Date date = new Date();
 
 Calendar cal = Calendar.getInstance();
 cal.setTime (date);
 cal.add (Calendar.DATE, 21);
ret = cal.getTime ();

 SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

 String dates=formatter.format(date);
  
 String rets=formatter.format(ret);




 

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

String qry = "INSERT INTO `regi`(`book_no`, `student_id`, `date_of_issue`, `returndate`, `regesterid`, `returnstatus`, `book_name`) VALUES ('"+book+"','"+roll+"','"+dates+"','"+rets+"','"+id+"','Pending','"+name+"')";
int c = st.executeUpdate(qry);

if( c == 1){
	%>
	<div class="well" align="center"  style="background-color:#97F3CF;">
	<h3>Book has been registered</h3><br>
	<a class="btn btn-md btn-warning" href="StudentRecord.jsp">See Your Record</a>
	<h4>Your code is:- <b><%=id %></b> <br>
	Submit this code in your library. For confirmation and get your book.
	
	 </h4>
	</div>
	<%
}

else {
	%>
	<h3>Book already registered</h3><br>
	<a href="StudentRecord.jsp">See Your Record</a>
	<a href="BookAvailibility.jsp">Get More Books</a>
	<%
	
}

 }
 catch(SQLException e1){ 	
		%>
		<h3>Book already registered</h3><br>
		<a href="StudentRecord.jsp">See Your Record</a>
		<a href="BookAvailability.jsp">Get More Books</a>
		<%
	 
 }
 
 catch(ClassNotFoundException e1){
 	 
 }


 
 
 
 
 
 
%>

</body>
<jsp:include page="HandF/Footer.jsp"></jsp:include>
</html>