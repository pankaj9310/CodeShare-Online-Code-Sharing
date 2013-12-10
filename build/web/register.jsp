<%-- 
    Document   : register
    Created on : Dec 9, 2013, 12:49:49 PM
    Author     : aqfaridi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%

            String uname = (String)session.getAttribute("username");
             if(uname!=null)
                {
                    response.sendRedirect("index.jsp");
                }

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>CodeShare</title>
<link rel="shortcut icon" type="image/x-icon" href="assets/favicon.ico"/>
<link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="assets/css/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="assets/js/jquery.js"></script>
		<script type="text/javascript" src="assets/js/jquery-1.7.1.min.js"></script>
		<script type="text/javascript" src="assets/js/bootstrap-button.js"></script>
		<script type="text/javascript" src="assets/js/jquery.validate.min1.js"></script>
                <script type="text/javascript" src="assets/js/bootstrap-tab.js"></script>
                <script type="text/javascript" src="assets/js/bootstrap-carousel.js"></script>
                <script src="assets/js/bootstrap-collapse.js" type="text/javascript"></script>

                <script src="assets/js/bootstrap.js" type="text/javascript"></script>
                <script type="text/javascript" src="script2.js"></script>
<style type="text/css">
         .navbar-inner{
			 background:#000;
			 border-bottom:5px solid #007AF4;
			 height:70px;

			 }
			.navbar-inner .brand{color:#FFF}

</style>
</head>

    <body>
<div class="navbar">
<div class="navbar-inner">
    <div class="container">
    <div class="row">
        <div class="span5">
<a href="index.jsp" class="brand"> <img src="./assets/img/logo.png" alt="CodeShare" width="100px" height="70px"/></a>
<br/>
<h1 class="brand" style="font-weight:bold;">CodeShare</h1>
        </div>
        <br/> 
        <div class="pull-right">
    <a class="btn btn-primary btn-block btn-lg " href="./login.jsp" style="color:white;font-weight: bold;text-decoration: none;">Login</a>

        </div>


    </div>

</div>
</div>
</div>

        <div class="container well">
            <div class="row">
            <div class="span6" style="color:#808080;font-weight:bold;font-size:15px;">
                        <h2>
                           CodeShare makes it easy to share what matters most in your Programming world !!
                        </h2>
                        <br/>
                        <br/>
                        <ul>
                            <li> User can share codes</li>
                            <li>
                               User can upload Problems
                            </li>
                            <li>
                               User can ask a Question
                            </li>
                            <li>
                                User can Give answer to other Queries
                            </li>
                            <li>
                                User View sourcecodes of Others
                            </li>

                        </ul>
                    </div>
          
                <div class="span6 ">
			<form action="<%= response.encodeURL("register") %>" id="contact-form" class="form-horizontal" method="post">

                                                    <div class="control-group">
						      <label class="control-label" for="sname">Full Name</label>
						      <div class="controls">
                                                          <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-user"></i></span>
                                                        <input type="text" class="input-large" name="sname" id="sname" placeholder="Full Name" onkeyup="loadXMLDoc()"/>
                                                              <span id="err"> </span>
                                                          </div>
                                                      </div>
						    </div>

						  <div class="control-group">
						      <label class="control-label" for="username">Username</label>
						      <div class="controls">
                                                          <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-user"></i></span>
                                                        <input type="text" class="input-large" name="username" id="username" placeholder="User Name" onkeyup="loadXMLDoc()"/>
                                                              <span id="err"> </span>
                                                          </div>
   <c:if test='${not empty param["exists"]}'>
 <p style="color:red;font-weight:bold;">username Already exists.</p>
</c:if>


                                                      </div>


						    </div>


                                                                                <div class="control-group">
                                                                              <label class="control-label" for="passwd">Password</label>
                                                                              <div class="controls">
                                                                                  <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-lock"></i></span>
                                                                                <input type="password" class="input-large" name="passwd" id="passwd" placeholder="******"/>
                                                                              </div>
                                                                            </div>
                                                    </div>
                                                     <div class="control-group">
                                                                              <label class="control-label" for="conpasswd">Confirm Password</label>
                                                                              <div class="controls">
                                                                                  <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-lock"></i></span>
                                                                                <input type="password" class="input-large" name="conpasswd" id="conpasswd" placeholder="******"/>
                                                                              </div>
                                                                            </div>
                                                     </div>
                                                    <div class="control-group">
						      <label class="control-label" for="sem">Institute</label>
						      <div class="controls">
                                                          <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-user"></i></span>
                                                        <input type="text" class="input-large" name="sem" id="sem" placeholder="Institute Name"  onkeyup="loadXMLDoc()"/>
                                                              <span id="err"> </span>
                                                          </div>
                                                      </div>
						    </div>

                                                    <div class="control-group">
                                                      <label class="control-label" for="email">Email Address</label>
                                                      <div class="controls">
                                                          <div class="input-prepend">
                                <span class="add-on"><i class="icon-envelope"></i></span>
                                                        <input type="text" class="input-large" name="email" id="email" placeholder="Email address"/>
                                                      </div>
                                                    </div>
                                                    </div>
						    <div class="control-group">
						      <label class="control-label" for="number">Mobile No.</label>
						      <div class="controls">
                                                <div class="input-prepend">
                                                    	<span class="add-on"><i class="icon-book"></i></span>
						        <input type="text" class="input-large" name="number" id="number" maxlength="10" placeholder="Mobile number"/>
					                        </div>
						    </div>
                                                    </div>

		
			
                                                      <div class="control-group">
                                                      <label class="control-label"></label>
                                                      <div class="controls">
                                                      <button type="submit" class="btn btn-success">Create My Account</button>   			      <button type="reset" class="btn">Cancel</button>
                                                                        </div>
                                                                                </div>
						</form>

        </div></div></div>
                                                                        <br/><br/>
  <%@include file="footer.jsp" %>
    </body>
</html>
