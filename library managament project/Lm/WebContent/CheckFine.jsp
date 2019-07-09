<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Check Fine</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

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

.btn{ 
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

.btn:hover{
    background:#FFF;
    border:2px solid #24acb3;
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



   <div class="container">
       <div class="col-lg-6 col-lg-offset-3">
           
            <div class="inner-form">
            
                 <h1>Check Fine</h1> 
            
                  <form action="Fine.jsp" method="post">
            		   <div class="row">
            		          
        			    	<div class="col-lg-12">
        			    	    <label>Roll Number</label>
        			    	    <div class="form-group">
        			    			<input type="text"  name = "roll"  id="rollno" class="form-control" placeholder="Enter Roll Number" required> 
        			    		</div>
        			    	</div>
        			    	
        			    	
        			    	
        					<div class="col-lg-12">
        					    <button type="submit" class="btn btn-default">
        							<span>Submit</span>
        						</button>
        					</div>
        					
        					
        						
            			 </div>
            	     </form>
    	    
                </div>
			
		</div>   
	</div>   
   

</form>

</body>
<jsp:include page="HandF/Footer.jsp"></jsp:include>
</html>