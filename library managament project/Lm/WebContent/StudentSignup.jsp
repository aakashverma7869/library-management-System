<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Register Student</title>
<style>
@import url('https://fonts.googleapis.com/css?family=Josefin+Sans:100,300,400,600,700');

.login{
   font-family: 'Josefin Sans', sans-serif;
   background: #f4f4f4; 
   padding:70px 0px;
}

h1{
    font-weight:600;
    font-family: 'Josefin Sans', sans-serif;
    text-transform:capitalize;
    text-align:center;
    color:#FFF;
    background:#72d6f5;
    padding:25px 0px;
}

form{
    padding:80px;
}

.inner-form{
    background:#FFF;
    box-shadow: 0 2px 4px 0 rgba(0,0,0,0.4);
}

label{
    font-weight:400;
    font-size:15px;
}

.form-control {
    background-color: #f5f5f5;
    box-shadow: none;
    color: #565656;
    font-size:14px;
    padding:30px 10px;
    margin-bottom:30px;
    border: 1px solid #f1f1f1;
}

.btn1{ 
    background: #72d6f5;
    color: #FFF;
    border-radius: 6px;
    margin: 0 auto;
    height: 48px;
    line-height: 38px;
    display: table;
    font-size: 15px;
    width: 100%;
}


.forgot{
    text-align:center;
    margin-top:30px;
    font-size:16px;
}

input[type=text], input[type=password], input[type=email] {
    background-color: transparent;
    border: none;
    border-bottom: 1px solid #72d6f5;
    border-radius: 0;
    width: 100%;
    margin: 0 0 30px 0;
    padding: 0;
    box-shadow: none;
}


input[type=text]:focus, input[type=password]:focus, input[type=email]:focus {
    box-shadow: none;
    border-bottom: 1px solid #6eafc4;
}
 


</style>

</head>
<jsp:include page="HandF/Header.jsp"></jsp:include>
<body style="background-color:#DDFEFE;">


   <div class="container" style="background-color:#DDFEFE;">
       <div class="col-lg-6 col-lg-offset-3">
           
            <div class="inner-form">
            
                 <h1>Student Book</h1> 
              <form action="SSup.jsp" method="post">
            		   <div class="row">
            		          
        			    	<div class="col-lg-12">
        			    	    <label>Enter Name:</label>
        			    	    <div class="form-group">
        			    			<input type="text" name="name" id="name" class="form-control" placeholder="Student Name" required>
        			    		</div>
        			    	</div>
        			    	
        			    	<div class="col-lg-12">
        			    	    <label>Enter Roll number:</label>
        			    	    <div class="form-group">
        			    			<input type="text" name="rollno" id="rollno" class="form-control" placeholder="Student Roll Number"  required >
        			    		</div>
        			    	</div>
        			    	<div class="col-lg-12">
        			    	    <label>Enter Branch:</label>
        			    	    <div class="form-group">
        			    			<input type="text" name="branch" id="branch" class="form-control" placeholder="Branch"  required >
        			    		</div>
        			    	</div>
        			    	<div class="col-lg-12">
        			    	    <label>Enter Year:</label>
        			    	    <div class="form-group">
        			    			<input type="text" name="year" id="year" class="form-control" placeholder="year"  required >
        			    		</div>
        			    	</div>
        			    	<div class="col-lg-12">
        			    	    <label>Enter E-mail:</label>
        			    	    <div class="form-group">
        			    			<input type="text" name="mail" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" id="mail" class="form-control" placeholder="Email"  required >
        			    		</div>
        			    	</div>
        			    	<div class="col-lg-12">
        			    	    <label>Contact Number</label>
        			    	    <div class="form-group">
        			    			<input type="text" id="telNo" name="contact" pattern="[1-9]{1}[0-9]{9}" class="form-control" placeholder="Contact Number:"  required >
        			    		</div>
        			    	</div>
        			    	<div class="col-lg-12">
        			    	    <label>Date of birth:</label>
        			    	    <div class="form-group">
        			    			<input type="Date" name="sdob" id="sdob" class="form-control"   required >
        			    		</div>
        			    	</div>
        			    	<div class="col-lg-12">
        			    	    <label>Gender:</label>
        			    	    <div class="form-group">
        			    			<input type="text" name="gender" id="gender" class="form-control" placeholder="Gender"  required >
        			    		</div>
        			    	</div>
        			    	<div class="col-lg-12">
        			    	    <label>Address:</label>
        			    	    <div class="form-group">
        			    			<input type="textarea" name="address" id="address" class="form-control" placeholder="Address"  required >
        			    		</div>
        			    	</div>
        			    	<div class="col-lg-12">
        			    	    <label>Password:</label>
        			    	    <div class="form-group">
        			    			<input type="text" name="password" id="password" class="form-control" placeholder="Password"  required >
        			    		</div>
        			    	</div>
        			    	
        			    	
        			    	
        					<div class="col-lg-12">
        					    <button type="submit" class="btn1 btn-default">
        							<span>Sign Up</span>
        						</button>
        					</div>
        				
        						
            			 </div>
            	     </form>
    	    
                </div> <!-- inner-form -->
			
		</div>   
	</div>   
    
            


</body>
<jsp:include page="HandF/Footer.jsp"></jsp:include>


</html>