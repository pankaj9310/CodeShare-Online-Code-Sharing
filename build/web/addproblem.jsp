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
<%@page import="java.sql.*,connection.Config" %>
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
      	<script type="text/javascript" src="assets/js/bootstrap-button.js"></script>
		<script type="text/javascript" src="assets/js/jquery.validate.min.js"></script>
                <script type="text/javascript" src="assets/js/bootstrap-tab.js"></script>
                <script type="text/javascript" src="assets/js/bootstrap-carousel.js"></script>
                <script type="text/javascript" src="assets/js/bootstrap-dropdown.js"></script>
                <script src="assets/js/bootstrap-collapse.js" type="text/javascript"></script>
                <script type="text/javascript" src="tinymce/js/tinymce/tinymce.js"></script>
                <script src="assets/js/bootstrap.js" type="text/javascript"></script>
                <script type="text/javascript" src="script1.js"></script>
               <script type="text/javascript">

        tinyMCE.init({

        mode : "specific_textareas",
        editor_selector : "mceEditor"
        });

        </script>


<div class="navbar">
<div class="navbar-inner">
    <div class="container">


<a href="index.jsp" class="brand"> <img src="./assets/img/logo.png" alt="CodeShare" width="100px" height="70px"/></a>
<br/>
<h1 class="brand" style="font-weight:bold;">CodeShare</h1>

<form action="logout" method="post" class="pull-right">
<button class="btn btn-primary " > logout </button>

</form>

        <br/>

        <div class="pull-right" style="color:white;">
        <%
             String uname = (String)session.getAttribute("username");
             if(uname==null)
                {
                    response.sendRedirect("index.jsp");
                }
            else
            {
                   out.println("<b> Welcome , "+uname+"</b>");
            }

             String picture = (String)session.getAttribute("pic");
             //out.println(picture);
             if(picture=="" || picture==null)
                 picture = "default.png";
%>

&nbsp;&nbsp;
        </div>



</div>
</div>
</div>
<div class="container well">
    <div class="row">

        <div class="span2">
            <a href="profile.jsp" alt="profile">Back to Profile</a>
        </div>
<div class="span10">

      <c:if test='${not empty param["Success"]}'>
 <p style="color:green;font-weight:bold;">Problem Added successfully.</p>

</c:if>

     <form action="addproblem" class="form-horizontal" method="post">
     <div class="control-group">
      <label class="control-label" for="pcode">Problem Code</label>
      <div class="controls">
          <div class="input-prepend">
        <span class="add-on"><i class="icon-user"></i></span>
        <input type="text" class="input-large" name="pcode" id="pcode" placeholder="Problem Code" onkeyup="loadXMLDoc()"/>
              <span id="err"> </span>
          </div>
      </div>
    </div>
    <div class="control-group">
                              <label class="control-label" for="pname">Problem Name</label>
                              <div class="controls">
                                  <div class="input-prepend">
        <span class="add-on"><i class="icon-lock"></i></span>
                                <input type="text" class="input-large" name="pname" id="pname" placeholder="Problem Name"/>
                              </div>
                            </div>
    </div>
   	    <div class="control-group">
                  <label class="control-label" for="resource">Resource</label>
                  <div class="controls">
                      <div class="input-prepend">
                    <span class="add-on"><i class="icon-user"></i></span>

                            <select  name="resource">
                                    <option value="own">OWN</option>
                                    <option value="spoj">SPOJ</option>
                                    <option value="codechef">CODECHEF</option>
                                    <option value="codeforces">CODEFORCES</option>
                                    <option value="topcoder">TOPCODER</option>
                                    <option value="timus">TIMUS</option>
                                    <option value="acmicpc">ACMICPC</option>
                                    <option value="uva">UVA</option>
                                    <option value="projecteuler">PROJECT EULER</option>
                                    <option value="codejam">CODEJAM</option>
                                    <option value="livearchive">LIVEARCHIVE</option>
                                    <option value="other">OTHER</option>
                            </select>
                        <span id="err"> </span>
                      </div>
                  </div>
                </div>
                <div class="control-group">
                                          <label class="control-label" for="category">Category</label>
                                          <div class="controls">
                                              <div class="input-prepend">
                    <span class="add-on"><i class="icon-lock"></i></span>
                       <select  name="category">
                                    <option value="DYNAMMICPROGRAMMING">DYNAMMIC-PROGRAMMING</option>
                                    <option value="GREEDY">GREEDY</option>
                                    <option value="DIVIDECONQUER">DIVIDE-CONQUER</option>
                                    <option value="BACKTRACKING">BACKTRACKING</option>
                                    <option value="MAXFLOW">MAXFLOW</option>
                                    <option value="BRUTEFORCE">BRUTEFORCE</option>
                                    <option value="SIEVE">SIEVE</option>
                                    <option value="BFSDFS">BFS/DFS</option>
                                    <option value="MATH">MATH</option>
                                    <option value="KRUSKAL">KRUSKAL</option>
                                    <option value="PRIM">PRIM</option
                                    <option value="GRAPH">GRAPH</option
                                    <option value="TREE">TREE</option>
                                    <option value="BINARYTREE">BINARY TREE</option>
                                    <option value="SORTING">SORTING</option>
                                    <option value="STACKQUEUE">STACK/QUEUE</option>
                                    <option value="DIJKSTRA">DIJKSTRA</option>
                                    <option value="BINARYSEARCH">BINARY-SEARCH</option>
                                    <option value="SEARCHING">SEARCHING</option>
                                    <option value="SEGMENTTREE">SEGMENT TREE</option>
                                    <option value="RABINMILLER">RABIN MILLER</option>
                                    <option value="BINARYINDEX TREE">BINARY INDEX TREE</option>
                                    <option value="OTHER">OTHER</option>
                            </select>

                                          </div>
                                        </div>
                </div>
        <textarea class="mceEditor"  name="tarea" rows="15" cols="50"></textarea>
         <br/>
         <center>
             <button type ="submit" class="btn btn-success">Submit</button></center>
         <br/><br/>
     </form>
 <br/><br/>
</div></div>
</div>
  <%@include file="footer.jsp" %>
    </body>
</html>
