<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="issuebook.jsp" method="post">
Enter Book Name:
<input type ="text" name = "n" required > <br>
Enter Student Roll Number:
<input type ="text" name = "r" required> <br>

Enter Book Number:
<input type ="text" name = "b"required> <br>




<input type="submit" id="save" value="Issue Book">
<a  href="AdminMenu.jsp"> Goto Admin Menu</a>

</form>
</body>
</html>