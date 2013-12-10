<%--
    Document   : index
    Created on : Dec 9, 2013, 9:55:45 AM
    Author     : aqfaridi
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.sql.*,connection.Config" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>CodeShare</title>
<link rel="shortcut icon" type="image/x-icon" href="assets/favicon.ico"/>
 <link href="style.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/bootstrap_1.css" rel="stylesheet" type="text/css" />
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

                <script src="assets/js/bootstrap.js" type="text/javascript"></script>
                <script type="text/javascript" src="script1.js"></script>
                  <script src="assets/js/jquery-1.js" type="text/javascript"></script>
                <script src="assets/js/jquery_1.js" type="text/javascript"></script>
                    <script src="assets/js/application_2.js" type="text/javascript"></script>



  <%
    String User =(String) session.getAttribute("username");
//    out.print(User);
    if(User != null)
               {%>

        <%@include file="header1.jsp" %>
        <%  }
                else
                {%>
                 <%@ include file="header.jsp" %>
                 <% }
   %>

<div class="container well">
    <div class="row">
<form action="search.jsp" class="form-search pull-right">

                                <select  class="input-append" name="resources">
                                    <option value="own">OWN</option>
                                    <option value="spoj">SPOJ</option>
                                    <option value="codechef">CODECHEF</option>
                                    <option value="codeforces">CODEFORCES</option>
                                    <option value="topcoder">TOPCODER</option>
                                    <option value="timus">TIMUS</option>
                                    <option value="acmicpc">ACMICPC</option>
                                    <option value="uva">UVA</option>
                                    <option value="codejam">CODEJAM</option>
                                    <option value="livearchive">LIVEARCHIVE</option>
                                    <option value="other">OTHER</option>
                            </select>
	<input type="text" name="searchbox" class="span3 search" placeholder="Search..."/>
	<button class="btn">Search</button>
</form><br/>
        <div class="span3">
            <ul class="nav nav-tabs nav-stacked nav-justified"  style='background-color:white;font-weight:bold;'>
                    <li>
                    <a href="index.jsp">HOME</a>
                    </li>
                    <li>
                    <a href="#dynammic" data-toggle="tab">DYNAMMIC PROGRAMMING</a>
                    </li>
                    <li>
                    <a href="#divide" data-toggle="tab">DIVIDE & CONQUER</a>
                    </li>
                    <li>
                    <a href="#greedy" data-toggle="tab">GREEDY</a>
                    </li>
                    <li>
                    <a href="#backtracking" data-toggle="tab">BACKTRACKING</a>
                    </li>
                    <li>
                    <a href="#maxflow" data-toggle="tab">MAXFLOW</a>
                    </li>
                    <li>
                    <a href="#graph" data-toggle="tab">GRAPH</a>
                    </li>
                    <li>
                    <a href="#tree" data-toggle="tab">TREE</a>
                    </li>
                    <li>
                    <a href="#searching" data-toggle="tab">SEARCHING</a>
                    </li>
                    <li>
                    <a href="#sorting" data-toggle="tab">SORTING</a>
                    </li>
                    <li>
                    <a href="#recursion" data-toggle="tab">RECURSION</a>
                    </li>
                   <li>
                    <a href="#number" data-toggle="tab">NUMBER THEORY</a>
                    </li>
                   <li>
                    <a href="#analysis" data-toggle="tab">ANALYSIS OF ALGO</a>
                    </li>
                    <li>
                    <a href="#advanced" data-toggle="tab">ADVANCED DS</a>
                    </li>            
                    <li>
                        <a href="#other" data-toggle="tab">OTHERS</a>
                    </li>
            </ul>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
              <div class="fb-like" data-href="https://www.facebook.com/codeshares.in" data-width="100" data-layout="button_count" data-action="like" data-show-faces="false" data-share="true"></div>
        </div>
   <div id="maincontent" class="span9">
            <div id="myTabContent" class="tab-content" style="border:2px solid #a1a1a1;border-radius:10px;">

  <div id="home" class="tab-pane fade in active">
<div class="span8">




            <center>    <img src="./assets/img/frontback3.png" alt="CodeShare" height="500px" width="600px"/>  </center>
            <h1 style="text-align: center;font-weight: bold;color:#808080;line-height: 25px;"  >
             How can we help you today?
            </h1>

             <p style="text-align: center;font-weight: bold;font-size:15px;color:#808080;line-height: 25px;">Answering your questions and providing support when you need it.
             </p>
            <br/>

             <h1 style="text-align:center;font-weight: bold;color:#808080;line-height: 25px;">  Welcome to CodeShare
            </h1>
            <br/>
            <p style="text-align: justify;font-weight: bold;font-size:15px;color:#808080;line-height: 25px;">
            <bold style="color:black;">CodeShare</bold> is a type of web application where anyone can share codes in any programming language and add any programming question for discussion . This type of website is mainly used by programmers to store pieces of source code or configuration information. The idea behind CodeShare is to make it more convenient for people to share large amounts of codes online.
            </p>
            <p style="text-align: justify;font-weight: bold;font-size:15px;color:#808080;line-height: 25px;"  >
            For Viewing the solutions and Comment/Discuss , a user must Register on CodeShare.
            </p>

            </div>
     <br/> <br/>
 </div>
 <br/> <br/>
 <%
        Config c = new Config();
        Connection con = c.getcon();
        Statement st = con.createStatement();
        int i=0;
        String[] str = {"dynammic","divide","greedy","backtracking","maxflow","graph","tree","searching","sorting","recursion","number","analysis","advanced","other"};
        String[] cat = {"DYNAMMICPROGRAMMING","DIVIDECONQUER","GREEDY","BACKTRACKING","MAXFLOW","GRAPH","TREE","SEARCHING","SORTING","RECURSION","NUMBERTHEORY","ANALYSISOFALGO","ADVANCEDDS","OTHER"};
%>

<%
for(int x=0;x<=13;x++)
{
        out.println("<div id="+str[x]+" class='tab-pane fade'>");
        String qry = "SELECT * FROM tutorials WHERE category='"+cat[x]+"'";
        ResultSet rs = st.executeQuery(qry);
        i=0;
     %>
           <table class="sortTableExample" class='table zebra-striped'>
           <thead>
            <tr>
                <th class="header">S No.</th>
                <th class="red header">Tutorial Code</th>
                <th class="blue header">Tutorial Name</th>
                <th class="green header headerSortUp">Category</th>
            </tr>
            </thead>
           <tbody>
     <%
        while(rs.next())
        {
            i++;
            %>


                <tr>
                    <td>
                     <%=i%>
                    </td>
                    <td>
                        <%=rs.getString("tutorialcode")%>
                    </td>
                    <td>
                       <a href="previewtutorial.jsp?id=<%=rs.getString("id")%>"  > <%=rs.getString("tutorialname")%> </a>
                    </td>
                    <td>
                       <%=rs.getString("category")%>
                    </td>

                </tr>



<%
       
        }
        out.println("</tbody></table></div>");
}
    %>
           


                
            </div>
   </div></div></div>
  <%@include file="footer.jsp" %>
</body>

</html>
