<%--
    Document   : changepasswd
    Created on : Jun 25, 2013, 3:33:46 PM
    Author     : ICT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
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
                    <script type="text/javascript" src="assets/js/jquery.validate.min.js"></script>
               

                    <script src="assets/js/bootstrap.js" type="text/javascript"></script>
               
    <style type="text/css">
             .navbar-inner{
                             background:#000;
                             border-bottom:5px solid #007AF4;
                             height:70px;

                             }
                            .navbar-inner .brand{color:#FFF}

    </style>



              <script type="text/javascript">
                  
                  
                  $(document).ready(function(){
	$('#contact').validate({
	    rules: {
                    passwd:{
                    required:true,
                    minlength: 6
                    },

                    conpasswd:{
                         required:true,
                        equalTo: "#passwd"
                        }
                },
                highlight: function(element) {
                        $(element).closest('.control-group').removeClass('success').addClass('error');
                },
                success: function(element) {
                        element
                        .text('OK!').addClass('valid')
                        .closest('.control-group').removeClass('error').addClass('success');
                }
                           });//validate function close

                  });
                  
              </script>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="container">
            <div class="row well ">
                   <div class="span5" style="color:#808080;font-weight:bold;font-size:15px;">
                        <h2 style="color:#808080;font-weight:bold;"">
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
                    <br/><br/><br/>
        <div class="span6 well" align="center">
            <%
                String email = request.getParameter("email");
                String authcode = request.getParameter("authcode");
            %>
    <form action='userchangepass.jsp?email=<%=email%>&authcode=<%=authcode%>' id="contact" class="form-horizontal" method="post" >

                                                            <div class="control-group" >
                                                                              <label class="control-label" for="passwd" >Password</label>
                                                                              <div class="controls">
                                                                                  <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-lock"></i></span>
                                                                                <input type="password" class="input-large" name="passwd" id="passwd" placeholder="******"/>
                                                                              </div>
                                                                            </div>
                                                    </div>
                                                     <div class="control-group">
                                                                              <label class="control-label" for="conpasswd">Re-Password</label>
                                                                              <div class="controls">
                                                                                  <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-lock"></i></span>
                                                                                <input type="password" class="input-large" name="conpasswd" id="conpasswd" placeholder="******"/>
                                                                              </div>
                                                                            </div>

                                                     </div>
                                                          <div class="control-group">
                                                          <label class="control-label"></label>
                                                          <div class="controls">

   <button type="submit" class="btn btn-primary" data-loading-text="Loading...">Update</button>



                                                          </div>
                                                                                    </div>
    </form>
        </div>
        </div></div>
            <%@include file="footer.jsp"%>
    </body>
</html>
