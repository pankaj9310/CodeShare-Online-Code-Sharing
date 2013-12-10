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
                    <a href="tutorials.jsp">TUTORIALS</a>
                    </li>
                    <li>
                    <a href="#spoj" data-toggle="tab">SPOJ</a>
                    </li>
                    <li>
                    <a href="#codechef" data-toggle="tab">CODECHEF</a>
                    </li>
                    <li>
                    <a href="#topcoder" data-toggle="tab">TOPCODER</a>
                    </li>
                    <li>
                    <a href="#codeforces" data-toggle="tab">CODEFORCES</a>
                    </li>
                    <li>
                    <a href="#uva" data-toggle="tab">UVA</a>
                    </li>
                    <li>
                    <a href="#livearchive" data-toggle="tab">LIVE ARCHIVE</a>
                    </li>
                    <li>
                    <a href="#timus" data-toggle="tab">TIMUS</a>
                    </li>
                    <li>
                    <a href="#projecteuler" data-toggle="tab">PROJECT EULER</a>
                    </li>
                    <li>
                    <a href="#codejam" data-toggle="tab">CODEJAM</a>
                    </li>
                    <li>
                    <a href="#acmicpc" data-toggle="tab">ACM-ICPC</a>
                    </li>
                  <li>
                    <a href="#own" data-toggle="tab">OWN</a>
                    </li>
                 <li>
                    <a href="#other" data-toggle="tab">OTHERS</a>
                    </li>
                 <li>
                    <a href="#queries" data-toggle="tab">QUERIES</a>
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
<div id="spoj" class="tab-pane"  style="padding:20px 10px;">

    <%
        Config c = new Config();
        Connection con = c.getcon();
        Statement st = con.createStatement();
        String qry = "SELECT * FROM spoj";
        ResultSet rs = st.executeQuery(qry);
        int i = 0;
     %>
        <table class='table'>
            <tr style="font-weight: bold;">
                    <td>S No.</td>
                    <td>Problem Code</td>
                    <td>Problem Name</td>
                    <td>Category</td>

           </tr>
     <%
        while(rs.next() && i<=19)
        {
            i++;
            %>


                <tr>
                    <td>
                     <%=i%>
                    </td>
                    <td>
                        <%=rs.getString("problemcode")%>
                    </td>
                    <td>
                       <a href="previewproblem.jsp?id=<%=rs.getString("problemcode")%>&res=spoj"  > <%=rs.getString("problemname")%> </a>
                    </td>
                    <td>
                       <%=rs.getString("category")%>
                    </td>

                </tr>
           


<%
        }
       
%>
        </table>

          <a class="btn btn-default btn-block btn-lg pull-right" href="./viewmore.jsp?id=1&res=spoj" style="color:#808080;font-weight: bold;text-decoration: none;">View more...</a>
          <br/>
</div>

<div id="codechef" class="tab-pane"  style="padding:20px 10px;">

    <%

        st = con.createStatement();
        qry = "SELECT * FROM codechef";
        rs = st.executeQuery(qry);
        i = 0;
     %>
        <table class='table'>
            <tr style="font-weight: bold;">
                    <td>S No.</td>
                    <td>Problem Code</td>
                    <td>Problem Name</td>
                    <td>Category</td>

           </tr>
     <%
        while(rs.next() && i<=19)
        {
            i++;
            %>


                <tr>
                    <td>
                     <%=i%>
                    </td>
                    <td>
                        <%=rs.getString("problemcode")%>
                    </td>
                    <td>
                       <a href="previewproblem.jsp?id=<%=rs.getString("problemcode")%>&res=codechef"  > <%=rs.getString("problemname")%> </a>
                    </td>
                    <td>
                       <%=rs.getString("category")%>
                    </td>

                </tr>



<%
        }

%>
        </table>
  <a class="btn btn-default btn-block btn-lg pull-right" href="./viewmore.jsp?id=1&res=codechef" style="color:#808080;font-weight: bold;text-decoration: none;">View more...</a>
  <br/>
</div>



<div id="codeforces" class="tab-pane " style="padding:20px 10px;">

    <%

        st = con.createStatement();
        qry = "SELECT * FROM codeforces";
        rs = st.executeQuery(qry);
        i = 0;
     %>
        <table class='table'>
            <tr style="font-weight: bold;">
                    <td>S No.</td>
                    <td>Problem Code</td>
                    <td>Problem Name</td>
                    <td>Category</td>

           </tr>
     <%
        while(rs.next() && i<=19)
        {
            i++;
            %>


                <tr>
                    <td>
                     <%=i%>
                    </td>
                    <td>
                        <%=rs.getString("problemcode")%>
                    </td>
                    <td>
                       <a href="previewproblem.jsp?id=<%=rs.getString("problemcode")%>&res=codeforces"  > <%=rs.getString("problemname")%> </a>
                    </td>
                    <td>
                       <%=rs.getString("category")%>
                    </td>

                </tr>



<%
        }

%>
        </table>
  <a class="btn btn-default btn-block btn-lg pull-right" href="./viewmore.jsp?id=1&res=codeforces" style="color:#808080;font-weight: bold;text-decoration: none;">View more...</a>
  <br/>
</div>




<div id="topcoder" class="tab-pane"  style="padding:20px 10px;">

    <%

        st = con.createStatement();
        qry = "SELECT * FROM topcoder";
        rs = st.executeQuery(qry);
        i = 0;
     %>
        <table class='table'>
            <tr style="font-weight: bold;">
                    <td>S No.</td>
                    <td>Problem Code</td>
                    <td>Problem Name</td>
                    <td>Category</td>

           </tr>
     <%
        while(rs.next() && i<=19)
        {
            i++;
            %>


                <tr>
                    <td>
                     <%=i%>
                    </td>
                    <td>
                        <%=rs.getString("problemcode")%>
                    </td>
                    <td>
                       <a href="previewproblem.jsp?id=<%=rs.getString("problemcode")%>&res=topcoder"  > <%=rs.getString("problemname")%> </a>
                    </td>
                    <td>
                       <%=rs.getString("category")%>
                    </td>

                </tr>



<%
        }

%>
        </table>
  <a class="btn btn-default btn-block btn-lg pull-right" href="./viewmore.jsp?id=1&res=topcoder" style="color:#808080;font-weight: bold;text-decoration: none;">View more...</a>
  <br/>
</div>





<div id="projecteuler" class="tab-pane"  style="padding:20px 10px;">

    <%

        st = con.createStatement();
        qry = "SELECT * FROM projecteuler";
        rs = st.executeQuery(qry);
        i = 0;
     %>
        <table class='table'>
            <tr style="font-weight: bold;">
                    <td>S No.</td>
                    <td>Problem Code</td>
                    <td>Problem Name</td>
                    <td>Category</td>

           </tr>
     <%
        while(rs.next() && i<=19)
        {
            i++;
            %>


                <tr>
                    <td>
                     <%=i%>
                    </td>
                    <td>
                        <%=rs.getString("problemcode")%>
                    </td>
                    <td>
                       <a href="previewproblem.jsp?id=<%=rs.getString("problemcode")%>&res=projecteuler"  > <%=rs.getString("problemname")%> </a>
                    </td>
                    <td>
                       <%=rs.getString("category")%>
                    </td>

                </tr>



<%
        }

%>
        </table>
  <a class="btn btn-default btn-block btn-lg pull-right" href="./viewmore.jsp?id=1&res=projecteuler" style="color:#808080;font-weight: bold;text-decoration: none;">View more...</a>
  <br/>
</div>





 <div id="codejam" class="tab-pane"  style="padding:20px 10px;">

    <%

        st = con.createStatement();
        qry = "SELECT * FROM codejam";
        rs = st.executeQuery(qry);
        i = 0;
     %>
        <table class='table'>
            <tr style="font-weight: bold;">
                    <td>S No.</td>
                    <td>Problem Code</td>
                    <td>Problem Name</td>
                    <td>Category</td>

           </tr>
     <%
        while(rs.next() && i<=19)
        {
            i++;
            %>


                <tr>
                    <td>
                     <%=i%>
                    </td>
                    <td>
                        <%=rs.getString("problemcode")%>
                    </td>
                    <td>
                       <a href="previewproblem.jsp?id=<%=rs.getString("problemcode")%>&res=codejam"  > <%=rs.getString("problemname")%> </a>
                    </td>
                    <td>
                       <%=rs.getString("category")%>
                    </td>

                </tr>



<%
        }

%>
        </table>
  <a class="btn btn-default btn-block btn-lg pull-right" href="./viewmore.jsp?id=1&res=codejam" style="color:#808080;font-weight: bold;text-decoration: none;">View more...</a>
  <br/>
</div>


<div id="acmicpc" class="tab-pane"  style="padding:20px 10px;">

    <%

        st = con.createStatement();
        qry = "SELECT * FROM acmicpc";
        rs = st.executeQuery(qry);
        i = 0;
     %>
        <table class='table'>
            <tr style="font-weight: bold;">
                    <td>S No.</td>
                    <td>Problem Code</td>
                    <td>Problem Name</td>
                    <td>Category</td>

           </tr>
     <%
        while(rs.next() && i<=19)
        {
            i++;
            %>


                <tr>
                    <td>
                     <%=i%>
                    </td>
                    <td>
                        <%=rs.getString("problemcode")%>
                    </td>
                    <td>
                       <a href="previewproblem.jsp?id=<%=rs.getString("problemcode")%>&res=acmicpc"  > <%=rs.getString("problemname")%> </a>
                    </td>
                    <td>
                       <%=rs.getString("category")%>
                    </td>

                </tr>



<%
        }

%>
        </table>
  <a class="btn btn-default btn-block btn-lg pull-right" href="./viewmore.jsp?id=1&res=acmicpc" style="color:#808080;font-weight: bold;text-decoration: none;">View more...</a>
  <br/>
</div>


  <div id="uva" class="tab-pane"  style="padding:20px 10px;">

    <%

        st = con.createStatement();
        qry = "SELECT * FROM uva";
        rs = st.executeQuery(qry);
        i = 0;
     %>
        <table class='table'>
            <tr style="font-weight: bold;">
                    <td>S No.</td>
                    <td>Problem Code</td>
                    <td>Problem Name</td>
                    <td>Category</td>

           </tr>
     <%
        while(rs.next() && i<=19)
        {
            i++;
            %>


                <tr>
                    <td>
                     <%=i%>
                    </td>
                    <td>
                        <%=rs.getString("problemcode")%>
                    </td>
                    <td>
                       <a href="previewproblem.jsp?id=<%=rs.getString("problemcode")%>&res=uva"  > <%=rs.getString("problemname")%> </a>
                    </td>
                    <td>
                       <%=rs.getString("category")%>
                    </td>

                </tr>



<%
        }

%>
        </table>
  <a class="btn btn-default btn-block btn-lg pull-right" href="./viewmore.jsp?id=1&res=uva" style="color:#808080;font-weight: bold;text-decoration: none;">View more...</a>
  <br/>
</div>

<div id="timus" class="tab-pane"  style="padding:20px 10px;">

    <%

        st = con.createStatement();
        qry = "SELECT * FROM timus";
        rs = st.executeQuery(qry);
        i = 0;
     %>
        <table class='table'>
            <tr style="font-weight: bold;">
                    <td>S No.</td>
                    <td>Problem Code</td>
                    <td>Problem Name</td>
                    <td>Category</td>

           </tr>
     <%
        while(rs.next() && i<=19)
        {
            i++;
            %>


                <tr>
                    <td>
                     <%=i%>
                    </td>
                    <td>
                        <%=rs.getString("problemcode")%>
                    </td>
                    <td>
                       <a href="previewproblem.jsp?id=<%=rs.getString("problemcode")%>&res=timus"  > <%=rs.getString("problemname")%> </a>
                    </td>
                    <td>
                       <%=rs.getString("category")%>
                    </td>

                </tr>



<%
        }

%>
        </table>
  <a class="btn btn-default btn-block btn-lg pull-right" href="./viewmore.jsp?id=1&res=timus" style="color:#808080;font-weight: bold;text-decoration: none;">View more...</a>
  <br/>
</div>


<div id="livearchive" class="tab-pane"  style="padding:20px 10px;">

    <%

        st = con.createStatement();
        qry = "SELECT * FROM livearchive  ";
        rs = st.executeQuery(qry);
        i = 0;
     %>
        <table class='table'>
            <tr style="font-weight: bold;">
                    <td>S No.</td>
                    <td>Problem Code</td>
                    <td>Problem Name</td>
                    <td>Category</td>

           </tr>
     <%
        while(rs.next() && i<=19)
        {
            i++;
            %>


                <tr>
                    <td>
                     <%=i%>
                    </td>
                    <td>
                        <%=rs.getString("problemcode")%>
                    </td>
                    <td>
                       <a href="previewproblem.jsp?id=<%=rs.getString("problemcode")%>&res=livearchive"  > <%=rs.getString("problemname")%> </a>
                    </td>
                    <td>
                       <%=rs.getString("category")%>
                    </td>

                </tr>



<%
        }

%>
        </table>
  <a class="btn btn-default btn-block btn-lg pull-right" href="./viewmore.jsp?id=1&res=livearchive" style="color:#808080;font-weight: bold;text-decoration: none;">View more...</a>
  <br/>
</div>
        <div id="own" class="tab-pane " style="padding:20px 10px;">

    <%

        st = con.createStatement();
        qry = "SELECT * FROM own";
        rs = st.executeQuery(qry);
        i = 0;
     %>
        <table class='table'>
            <tr style="font-weight: bold;">
                    <td>S No.</td>
                    <td>Problem Code</td>
                    <td>Problem Name</td>
                    <td>Category</td>

           </tr>
     <%
        while(rs.next() && i<=19)
        {
            i++;
            %>


                <tr>
                    <td>
                     <%=i%>
                    </td>
                    <td>
                        <%=rs.getString("problemcode")%>
                    </td>
                    <td>
                       <a href="previewproblem.jsp?id=<%=rs.getString("problemcode")%>&res=own"  > <%=rs.getString("problemname")%> </a>
                    </td>
                    <td>
                       <%=rs.getString("category")%>
                    </td>

                </tr>



<%
        }

%>
        </table>
  <a class="btn btn-default btn-block btn-lg pull-right" href="./viewmore.jsp?id=1&res=own" style="color:#808080;font-weight: bold;text-decoration: none;">View more...</a>
  <br/>
</div>

        <div id="other" class="tab-pane " style="padding:20px 10px;">

    <%

        st = con.createStatement();
        qry = "SELECT * FROM other";
        rs = st.executeQuery(qry);
        i = 0;
     %>
        <table class='table'>
            <tr style="font-weight: bold;">
                    <td>S No.</td>
                    <td>Problem Code</td>
                    <td>Problem Name</td>
                    <td>Category</td>

           </tr>
     <%
        while(rs.next() && i<=19)
        {
            i++;
            %>


                <tr>
                    <td>
                     <%=i%>
                    </td>
                    <td>
                        <%=rs.getString("problemcode")%>
                    </td>
                    <td>
                       <a href="previewproblem.jsp?id=<%=rs.getString("problemcode")%>&res=other"  > <%=rs.getString("problemname")%> </a>
                    </td>
                    <td>
                       <%=rs.getString("category")%>
                    </td>

                </tr>



<%
        }

%>
        </table>
  <a class="btn btn-default btn-block btn-lg pull-right" href="./viewmore.jsp?id=1&res=other" style="color:#808080;font-weight: bold;text-decoration: none;">View more...</a>
  <br/>
</div>


        <div id="queries" class="tab-pane " style="padding:20px 10px;">

    <%

        st = con.createStatement();
        qry = "SELECT * FROM askquestions";
        rs = st.executeQuery(qry);
        i = 0;
     %>
        <table class='table'>
            <tr style="font-weight: bold;">
                    <td>S No.</td>
                    <td>Question Code</td>
                    <td>Question Title</td>
                    <td>Category</td>


           </tr>
     <%
        while(rs.next() && i<=19)
        {
            i++;
            %>


                <tr>
                    <td>
                     <%=i%>
                    </td>
                    <td>
                        <%=rs.getString("questioncode")%>
                    </td>
                    <td>
                       <a href="previewquestion.jsp?id=<%=rs.getString("id")%>"  > <%=rs.getString("questiontitle")%> </a>
                    </td>
                    <td>
                       <%=rs.getString("category")%>
                    </td>

                </tr>



<%
        }
         con.close();

%>
   
        </table>
  <a class="btn btn-default btn-block btn-lg pull-right" href="./viewmore.jsp?id=1&res=queries" style="color:#808080;font-weight: bold;text-decoration: none;">View more...</a>
  <br/>
</div>






            </div>
   </div>
    </div>
</div>
<br/><br/><br/>

  <%@include file="footer.jsp" %>
</body>

</html>
