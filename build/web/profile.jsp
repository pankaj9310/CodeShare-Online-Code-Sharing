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

        <div class="span3">

            <div style="border:5px #808080 solid;z-index:-100;height:200px;width:210px;">
                <center><img  src="uploadimg/<%=picture%>" alt="Profile Pic"  style="padding:5px;height:190px;width:200px"/></center>
            </div>

            <br/>
            <ul class="nav nav-tabs nav-stacked nav-justified"  style='background-color:white;'>
                    <li>
                        <a href="./index.jsp" >Home</a>
                    </li>
                    <li>
                        <a href="#viewprofile" data-toggle="tab">Profile</a>
                    </li>
                    <li>
                        <a href="#addtutorials" data-toggle="tab">Add Tutorials</a>
                    </li>
                    <li>
                        <a href="addproblem.jsp" >Add Problem</a>
                    </li>
                    <li>
                        <a href="addsolution.jsp" >Add Solutions</a>
                    </li>
                    <li>
                        <a href="#askques" data-toggle="tab">Ask a Question</a>
                    </li>
                    <li>
                        <a href="#giveans" data-toggle="tab">Give Answer</a>
                    </li>
                    <li>
                        <a href="#profile" data-toggle="tab">Edit Profile</a>
                    </li>
                    <li>
                        <a href="#ChangPassword" data-toggle="tab">Change Password</a>
                    </li>
            </ul>
            <br/><br/>
        </div>

   <div id="maincontent" class="span9">
            <div id="myTabContent" class="tab-content" style="border:2px solid #a1a1a1;border-radius:10px;">

<div id="addtutorials" class="span8 tab-pane


  <c:if test='${not empty param["SuccessTut"]}'>
active
</c:if>    

      " style="padding:20px 10px;">

  <c:if test='${not empty param["SuccessTut"]}'>
 <p style="color:green;font-weight:bold;">Tutorial Added successfully.</p>

</c:if>
        <script type="text/javascript">

        tinyMCE.init({

        mode : "specific_textareas",
        editor_selector : "mceEditor"
        });

        </script>

    <form action="addtutorial" class="form-horizontal" method="post">
     <div class="control-group">
      <label class="control-label" for="tcode">Tutorial Code</label>
      <div class="controls">
          <div class="input-prepend">
        <span class="add-on"><i class="icon-user"></i></span>
        <input type="text" class="input-large" name="tcode" id="tcode" placeholder="Problem Code" onkeyup="loadXMLDoc()"/>
              <span id="err"> </span>
          </div>
      </div>
    </div>
    <div class="control-group">
                              <label class="control-label" for="tname">Tutorial Title</label>
                              <div class="controls">
                                  <div class="input-prepend">
        <span class="add-on"><i class="icon-lock"></i></span>
                                <input type="text" class="input-large" name="tname" id="tname" placeholder="Problem Name"/>
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
                                    <option value="RECURSION">RECURSION</option>
                                    <option value="BACKTRACKING">BACKTRACKING</option>
                                    <option value="MAXFLOW">MAXFLOW</option>   
                                    <option value="GRAPH">GRAPH</option>
                                    <option value="TREE">TREE</option>                                  
                                    <option value="SORTING">SORTING</option>
                                    <option value="NUMBERTHEORY">NUMBERTHEORY</option>
                                    <option value="SEARCHING">SEARCHING</option>  
                                    <option value="ANALYSISOFALGO">ANALYSIS OF ALGO</option>
                                    <option value="ADVANCEDDS">ADVANCED DS</option>
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
     </div>




 <div id="askques" class="span8 tab-pane

  <c:if test='${not empty param["SuccessAsk"]}'>
 active
</c:if>


      " style="padding:20px 10px;" >


  <c:if test='${not empty param["SuccessAsk"]}'>
 <p style="color:green;font-weight:bold;">Question Added successfully.</p>

</c:if>
   <form action="askquestion" class="form-horizontal" method="post">
     <div class="control-group">
      <label class="control-label" for="qcode">Question Code</label>
      <div class="controls">
          <div class="input-prepend">
        <span class="add-on"><i class="icon-user"></i></span>
        <input type="text" class="input-large" name="qcode" id="qcode" placeholder="Problem Code" onkeyup="loadXMLDoc()"/>
              <span id="err"> </span>
          </div>
      </div>
    </div>
    <div class="control-group">
                              <label class="control-label" for="qtitle">Question Title</label>
                              <div class="controls">
                                  <div class="input-prepend">
        <span class="add-on"><i class="icon-lock"></i></span>
                                <input type="text" class="input-large" name="qtitle" id="qtitle" placeholder="Problem Name"/>
                              </div>
                            </div>
    </div>

                <div class="control-group">
                                          <label class="control-label" for="category">Category</label>
                                          <div class="controls">
                                              <div class="input-prepend">
                    <span class="add-on"><i class="icon-lock"></i></span>
                       <select  name="category">
                                    <option value="ComputersInternet">Computers & Internet</option>
                                    <option value="EducationReference">Education & Reference</option>
                                    <option value="Programming">Programming</option>
                                    <option value="Other">Other</option>
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

     </div>


 <div id="giveans" class="span8 tab-pane" style="padding:20px 10px;" >

   <form action="giveanswer.jsp" class="form-horizontal" method="post">
                        <div class="control-group">
                                          <label class="control-label" for="category">Category</label>
                                          <div class="controls">
                                              <div class="input-prepend">
                    <span class="add-on"><i class="icon-lock"></i></span>
                       <select  name="category">
                                    <option value="ComputersInternet">Computers & Internet</option>
                                    <option value="EducationReference">Education & Reference</option>
                                    <option value="Programming">Programming</option>
                                    <option value="Other">Other</option>
                            </select>

                                          </div>
                                        </div>
                </div>
         <br/>
         <center>
             <button type ="submit" class="btn btn-success">Submit</button></center>
         <br/><br/>
     </form>

     </div>




 <div id="ChangPassword" class="span8 tab-pane
<c:if test='${not empty param["SuccessPass"]}'>
 active
</c:if>
 <c:if test='${not empty param["FailedPass"]}'>
 active
</c:if>
 " style="padding:20px 10px;">
<form  action ='passchange' id="contact-form4" class="form-horizontal" method="post">

						    <div class="control-group">
						      <label class="control-label" for="passwd">Current Password</label>
						      <div class="controls">
                                                          <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-book"></i></span>
                                                        <input type="password" class="input-large" name="passwd" id="passwd" placeholder="Current Password" required="true" onkeyup="loadXMLDoc()"/>
                                                              <span id="err"> </span>
                                                          </div>
                                                      </div>
						    </div>
                                                    <div class="control-group">
                                                                              <label class="control-label" for="apasswd">New Password</label>
                                                                              <div class="controls">
                                                                                  <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-barcode"></i></span>
                                                                                <input type="password" class="input-large" name="apasswd" id="apasswd" required="true" placeholder="New Password"/>
                                                                              </div>
                                                                            </div>
                                                    </div>
                                                                                <div class="control-group">
                                                                              <label class="control-label" for="conpasswd">Re Password</label>
                                                                              <div class="controls">
                                                                                  <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-barcode"></i></span>
                                                                                <input type="password" class="input-large" name="conpasswd" id="conpassword" required="true" placeholder="New Password"/>
                                                                              </div>
                                                                            </div>
                                                    </div>

                                                      <div class="control-group">
                                                      <label class="control-label"></label>
                                                      <div class="controls">
<c:if test='${not empty param["SuccessPass"]}'>
 <p style="color:green;font-weight:bold;">Your Password is changed successfully.</p>
</c:if>

<c:if test='${not empty param["FailedPass"]}'>
 <p style="color:red;font-weight:bold;">Wrong current Password.</p>

</c:if>
                                                      <button type="submit" class="btn btn-success">Submit</button>
                                                                        </div>
                                                                                </div>


</form>

                </div>




 <div id="viewprofile" class="span8 tab-pane
  <c:if test='${!((not empty param["SuccessUpdate"]) || (not empty param["FailedPass"]) || (not empty param["SuccessAsk"]) || (not empty param["Success"]) || (not empty param["SuccessSol"]) || (not empty param["SuccessTut"]) || (not empty param["SuccessPass"]))}'>
 active
</c:if>




      " style="padding:20px 10px;">


    

    <h1 style='color:#3399FF;'> Personal Details : </h1>
 <%
Connection con=null;
Statement st=null;
ResultSet rs=null;
    try{
        Config c = new Config();
        con = c.getcon();
        String name="",sem="",email="",mobile="",dob="",sex="",addr="",city="",cntry="",website="",aboutme="";
            st=con.createStatement();
            String userid = session.getAttribute("userid").toString();
            String q = "select * from users where username='"+userid+"'";
            st =con.createStatement();
            rs=st.executeQuery(q);
            if(rs.next())
            {
                name = rs.getString("fullname");
                sem = rs.getString("Institute");
                email = rs.getString("email");
                mobile = rs.getString("mobile");
                dob = rs.getString("dob");

                if(dob=="")
                    dob="not available";
                sex = rs.getString("gender");
                if(sex=="")
                    sex = "not available";
                addr = rs.getString("address");
                if(addr=="")
                    addr = "not available";
                city = rs.getString("city");
                if(city=="")
                    city="not available";
                cntry = rs.getString("country");
                if(cntry=="")
                    cntry="not available";
                website = rs.getString("website");
                if(website=="")
                    website = "not available";
                aboutme = rs.getString("aboutme");
                if(aboutme=="")
                    aboutme="not available";
             
            }
			out.println("<table class='span8 table table-hover' style='background-color:white;color:#808080;' >");

        %>
		     <tr style="font-weight:bold;">
                              <td>Name : </td>
                              <td><%=name%></td>
                          </tr>
						   <tr style="font-weight:bold;">
                              <td>Institute : </td>
                              <td><%=sem%></td>
                          </tr>
						   <tr style="font-weight:bold;">
                              <td>Email : </td>
                              <td><%=email%></td>
                          </tr>
			<tr style="font-weight:bold;">
                              <td>Mobile: </td>
                              <td><%=mobile%></td>
                        </tr>
                       <tr style="font-weight:bold;">
                              <td>Date of Birth: </td>
                              <td><%=dob%></td>
                          </tr>


                          <tr style="font-weight:bold;">
                              <td>Gender: </td>
                              <td><%=sex%></td>
                          </tr>


                          <tr style="font-weight:bold;">
                              <td>Address: </td>
                              <td><pre><%=addr%></pre></td>
                          </tr>


                          <tr style="font-weight:bold;">
                              <td>Current City: </td>
                              <td><%=city%></td>
                          </tr>


                          <tr style="font-weight:bold;">
                              <td>Country: </td>
                              <td><%=cntry%></td>
                          </tr>

                          <tr style="font-weight:bold;">
                              <td>Website: </td>
                              <td><%=website%></td>
                          </tr>


                          <tr style="font-weight:bold;">
                              <td>About Me: </td>
                              <td><pre><%=aboutme%></pre></td>
                          </tr>
			   
			<%
			out.println("</table>");
                                }catch(Exception e)
                                        {}
			%>
                        <br/><br/>
            </div>





<div id="profile" class="span8 tab-pane

<c:if test='${not empty param["SuccessUpdate"]}'>
active
</c:if>


     ">

    <c:if test='${not empty param["SuccessUpdate"]}'>
 <p style="color:green;font-weight:bold;">Profile Updated successfully.</p>
</c:if>

 <%
    try{
        
        String userid = (String)session.getAttribute("userid");
        
       
            String q = "select * from users where username = '"+userid+"'";
            Statement PStmt=con.createStatement();
            rs=PStmt.executeQuery(q);
            String days="",months="",years="";
            if(rs.next())
            {
                String pic=rs.getString("pic");
                if(pic.equals("") || pic==null)
                    pic = "default.png";
                String fname = rs.getString("fullname");
                String dob=rs.getString("dob");
                if(dob!="")
                {
                    String[] str = dob.split("/");
                    days = str[0];
                    months = str[1];
                    years = str[2];
                }
                String sex=rs.getString("gender");
                String phone=rs.getString("mobile");
                String ccity=rs.getString("city");
                String country=rs.getString("country");
                String address=rs.getString("address");
                String website=rs.getString("website");
                String aboutme=rs.getString("aboutme");
               
  %>


<form action="profileupdate" method="post" enctype="multipart/form-data" >
<table class="span8 table">
    <tr><td style="font-weight:bold;color:#808080;">Upload Image</td>
    <td><input type="file" name="pic" value="<% out.print(pic); %>" /></td>
</tr>
<tr><td style="font-weight:bold;color:#808080;">Full Name</td>
    <td><input type="text" name="fname" required="true" class="span3" placeholder="First Name" value="<% out.print(fname); %>" />
</td></tr>

<tr><td style="font-weight:bold;color:#808080;">Date Of Birth</td>
<td class="span3">
<select style="width:80px" name="day">
<%
    if(dob=="")
        out.println("<option>Days</option>");
    else
        out.println("<option>"+days+"</option>");
for(int i=1;i<=31;i++)
{
	out.println("<option>"+i+"</option>");

}

%>
</select>
<select style="width:80px" name="month">

<%

    if(dob=="")
        out.println("<option>Months</option>");
    else
        out.println("<option>"+months+"</option>");

%>


<option value="0">01</option>
<option>02</option>
<option>03</option>
<option>04</option>
<option>05</option>
<option>06</option>
<option>07</option>
<option>08</option>
<option>09</option>
<option>10</option>
<option>11</option>
<option>12</option>
</select>
<select style="width:80px" name="year">

<%
    if(dob=="")
        out.println("<option>Years</option>");
    else
        out.println("<option>"+years+"</option>");

for(int i=1960;i<2013;i++)
{
out.println("<option>"+i+"</option>");
}


%>
</select>
</td>
</tr>
<tr><td style="font-weight:bold;color:#808080;">Gender</td>
    <td><input type="radio" name="sex" value="Male" value="<% out.print(sex); %>" <% if(sex.equals("Male"))out.print("checked");%> />Male
<input type="radio" name="sex" value="Female" value="<% out.print(sex); %>" <% if(sex.equals("Female"))out.print("checked");%> />Female
</td></tr>

<tr><td style="font-weight:bold;color:#808080;">Mobile</td>
<td><input tabindex="text" class="span3" maxlength="10" name="phone" placeholder="Mobile Phones" value="<% out.print(phone); %>" /></td></tr>
<tr><td style="font-weight:bold;color:#808080;">Current City</td>
    <td><input title="text" class="span3" name="ccity" placeholder="Current City" value="<% out.print(ccity); %>" />
</td></tr>
<tr><td style="font-weight:bold;color:#808080;">country</td>
<td><select style="width:280px" name="country" >
        <%
    if(country=="")
        out.println("<option>- - Select a country - -</option>");
    else
        out.println("<option>"+country+"</option>");

%>

<option value="AF">Afghanistan</option>
<option value="AX">Åland Islands</option>
<option value="AL">Albania</option>
<option value="DZ">Algeria</option>
<option value="AS">American Samoa</option>
<option value="AD">Andorra</option>
<option value="AO">Angola</option>
<option value="AI">Anguilla</option>
<option value="AQ">Antarctica</option>
<option value="AG">Antigua and Barbuda</option>
<option value="AR">Argentina</option>
<option value="AM">Armenia</option>
<option value="AW">Aruba</option>
<option value="AU">Australia</option>
<option value="AT">Austria</option>
<option value="AZ">Azerbaijan</option>
<option value="BS">Bahamas</option>
<option value="BH">Bahrain</option>
<option value="BD">Bangladesh</option>
<option value="BB">Barbados</option>
<option value="BY">Belarus</option>
<option value="BE">Belgium</option>
<option value="BZ">Belize</option>
<option value="BJ">Benin</option>
<option value="BM">Bermuda</option>
<option value="BT">Bhutan</option>
<option value="BO">The Plurinational State of Bolivia</option>
<option value="BQ">Bonaire, Sint Eustatius and Saba</option>
<option value="BA">Bosnia and Herzegovina</option>
<option value="BW">Botswana</option>
<option value="BV">Bouvet Island</option>
<option value="BR">Brazil</option>
<option value="IO">British Indian Ocean Territory</option>
<option value="BN">Brunei Darussalam</option>
<option value="BG">Bulgaria</option>
<option value="BF">Burkina Faso</option>
<option value="BI">Burundi</option>
<option value="KH">Cambodia</option>
<option value="CM">Cameroon</option>
<option value="CA">Canada</option>
<option value="CV">Cape Verde</option>
<option value="KY">Cayman Islands</option>
<option value="CF">Central African Republic</option>
<option value="TD">Chad</option>
<option value="CL">Chile</option>
<option value="CN">China</option>
<option value="CX">Christmas Island</option>
<option value="CC">Cocos (Keeling) Islands</option>
<option value="CO">Colombia</option>
<option value="KM">Comoros</option>
<option value="CG">Congo</option>
<option value="CD">Congo, The Democratic Republic Of The</option>
<option value="CK">Cook Islands</option>
<option value="CR">Costa Rica</option>
<option value="CI">Cote D'Ivoire</option>
<option value="HR">Croatia</option>
<option value="CU">Cuba</option>
<option value="CW">Curaçao</option>
<option value="CY">Cyprus</option>
<option value="CZ">Czech Republic</option>
<option value="DK">Denmark</option>
<option value="DJ">Djibouti</option>
<option value="DM">Dominica</option>
<option value="DO">Dominican Republic</option>
<option value="EC">Ecuador</option>
<option value="EG">Egypt</option>
<option value="SV">El Salvador</option>
<option value="GQ">Equatorial Guinea</option>
<option value="ER">Eritrea</option>
<option value="EE">Estonia</option>
<option value="ET">Ethiopia</option>
<option value="FK">Falkland Islands (Malvinas)</option>
<option value="FO">Faroe Islands</option>
<option value="FJ">Fiji</option>
<option value="FI">Finland</option>
<option value="FR">France</option>
<option value="GF">French Guiana</option>
<option value="PF">French Polynesia</option>
<option value="TF">French Southern Territories</option>
<option value="GA">Gabon</option>
<option value="GM">Gambia</option>
<option value="GE">Georgia</option>
<option value="DE">Germany</option>
<option value="GH">Ghana</option>
<option value="GI">Gibraltar</option>
<option value="GR">Greece</option>
<option value="GL">Greenland</option>
<option value="GD">Grenada</option>
<option value="GP">Guadeloupe</option>
<option value="GU">Guam</option>
<option value="GT">Guatemala</option>
<option value="GG">Guernsey</option>
<option value="GN">Guinea</option>
<option value="GW">Guinea-Bissau</option>
<option value="GY">Guyana</option>
<option value="HT">Haiti</option>
<option value="HM">Heard Island and McDonald Islands</option>
<option value="VA">Holy See (Vatican City State)</option>
<option value="HN">Honduras</option>
<option value="HK">Hong Kong</option>
<option value="HU">Hungary</option>
<option value="IS">Iceland</option>
<option value="IN">India</option>
<option value="ID">Indonesia</option>
<option value="IR">Iran, Islamic Republic of</option>
<option value="IQ">Iraq</option>
<option value="IE">Ireland</option>
<option value="IL">Israel</option>
<option value="IT">Italy</option>
<option value="JM">Jamaica</option>
<option value="JP">Japan</option>
<option value="JE">Jersey</option>
<option value="JO">Jordan</option>
<option value="KZ">Kazakhstan</option>
<option value="KE">Kenya</option>
<option value="KI">Kiribati</option>
<option value="KP">Korea, Democratic People's Republic of (North)</option>
<option value="KR">Korea, Republic of (South)</option>
<option value="KW">Kuwait</option>
<option value="KG">Kyrgyzstan</option>
<option value="LA">Lao People's Democratic Republic</option>
<option value="LV">Latvia</option>
<option value="LB">Lebanon</option>
<option value="LS">Lesotho</option>
<option value="LR">Liberia</option>
<option value="LY">Libyan Arab Jamahiriya</option>
<option value="LI">Liechtenstein</option>
<option value="LT">Lithuania</option>
<option value="LU">Luxembourg</option>
<option value="MO">Macao</option>
<option value="MK">Macedonia, The Former Yugoslav Republic of</option>
<option value="MG">Madagascar</option>
<option value="MW">Malawi</option>
<option value="MY">Malaysia</option>
<option value="MV">Maldives</option>
<option value="ML">Mali</option>
<option value="MT">Malta</option>
<option value="MH">Marshall Islands</option>
<option value="MQ">Martinique</option>
<option value="MR">Mauritania</option>
<option value="MU">Mauritius</option>
<option value="YT">Mayotte</option>
<option value="MX">Mexico</option>
<option value="FM">Micronesia, Federated States of</option>
<option value="MD">Moldova, Republic of</option>
<option value="MC">Monaco</option>
<option value="MN">Mongolia</option>
<option value="ME">Montenegro</option>
<option value="MS">Montserrat</option>
<option value="MA">Morocco</option>
<option value="MZ">Mozambique</option>
<option value="MM">Myanmar</option>
<option value="NA">Namibia</option>
<option value="NR">Nauru</option>
<option value="NP">The Federal Democratic Republic of Nepal</option>
<option value="NL">Netherlands</option>
<option value="NC">New Caledonia</option>
<option value="NZ">New Zealand</option>
<option value="NI">Nicaragua</option>
<option value="NE">Niger</option>
<option value="NG">Nigeria</option>
<option value="NU">Niue</option>
<option value="NF">Norfolk Island</option>
<option value="MP">Northern Mariana Islands</option>
<option value="NO">Norway</option>
<option value="OM">Oman</option>
<option value="PK">Pakistan</option>
<option value="PW">Palau</option>
<option value="PA">Panama</option>
<option value="PG">Papua New Guinea</option>
<option value="PY">Paraguay</option>
<option value="PE">Peru</option>
<option value="PH">Philippines</option>
<option value="PN">Pitcairn</option>
<option value="PL">Poland</option>
<option value="PT">Portugal</option>
<option value="PR">Puerto Rico</option>
<option value="QA">Qatar</option>
<option value="RE">Reunion</option>
<option value="RO">Romania</option>
<option value="RU">Russian Federation</option>
<option value="RW">Rwanda</option>
<option value="BL">Saint Barthelemy</option>
<option value="SH">Saint Helena, Ascension and Tristan da Cunha</option>
<option value="KN">Saint Kitts and Nevis</option>
<option value="LC">Saint Lucia</option>
<option value="MF">Saint Martin</option>
<option value="PM">Saint Pierre and Miquelon</option>
<option value="VC">Saint Vincent and the Grenadines</option>
<option value="WS">Samoa</option>
<option value="SM">San Marino</option>
<option value="ST">Sao Tome and Principe</option>
<option value="SA">Saudi Arabia</option>
<option value="SN">Senegal</option>
<option value="RS">Serbia</option>
<option value="SC">Seychelles</option>
<option value="SL">Sierra leone</option>
<option value="SG">Singapore</option>
<option value="SX">Sint Maarten (Dutch Part)</option>
<option value="SK">Slovakia</option>
<option value="SI">Slovenia</option>
<option value="SB">Solomon Islands</option>
<option value="SO">Somalia</option>
<option value="ZA">South Africa</option>
<option value="GS">South Georgia and the South Sandwich Islands</option>
<option value="ES">Spain</option>
<option value="LK">Sri Lanka</option>
<option value="SD">Sudan</option>
<option value="SS">South Sudan</option>
<option value="SR">Suriname</option>
<option value="SJ">Svalbard and Jan Mayen</option>
<option value="SZ">Swaziland</option>
<option value="SE">Sweden</option>
<option value="CH">Switzerland</option>
<option value="SY">Syrian Arab Republic</option>
<option value="TW">Taiwan</option>
<option value="TJ">Tajikistan</option>
<option value="TZ">Tanzania, United Republic of</option>
<option value="TH">Thailand</option>
<option value="TL">Timor-Leste</option>
<option value="TG">Togo</option>
<option value="TK">Tokelau</option>
<option value="TO">Tonga</option>
<option value="TT">Trinidad and Tobago</option>
<option value="TN">Tunisia</option>
<option value="TR">Turkey</option>
<option value="TM">Turkmenistan</option>
<option value="TC">Turks and Caicos Islands</option>
<option value="TV">Tuvalu</option>
<option value="UG">Uganda</option>
<option value="UA">Ukraine</option>
<option value="AE">United Arab Emirates</option>
<option value="GB">United Kingdom</option>
<option value="UM">United States Minor Outlying Islands</option>
<option value="US">United States</option>
<option value="UY">Uruguay</option>
<option value="UZ">Uzbekistan</option>
<option value="VU">Vanuatu</option>
<option value="VE">Venezuela</option>
<option value="VN">Viet Nam</option>
<option value="VG">Virgin Islands, British</option>
<option value="VI">Virgin Islands, U.S.</option>
<option value="WF">Wallis and Futuna</option>
<option value="EH">Western Sahara</option>
<option value="YE">Yemen</option>
<option value="ZM">Zambia</option>
<option value="ZW">Zimbabwe</option>
</select>
</td>
</tr>
<tr><td style="font-weight:bold;color:#808080;">Address</td>
<td><textarea rows="3" cols="60" name="address" placeholder="Address" class="span3" value="<% out.print(address); %>"> <%if(address!="")out.print(address);%>  </textarea></td></tr>
<tr><td style="font-weight:bold;color:#808080;">Website</td>
    <td><input type="text" class="span3" name="website" placeholder="Website" value="<%out.print(website);%>" /></td></tr>
    <tr><td style="font-weight:bold;color:#808080;">About Me</td>
        <td><textarea  rows="3" cols="60" name="aboutme" class="span3" placeholder="About Me" value="<% out.print(aboutme); %>"> <%if(aboutme!="")out.print(aboutme);%></textarea>
        </td></tr>
    <tr><td><button class="btn btn-info" type="submit">Save</button></td>
        <td><button class="btn btn-error" type="submit">Cancel</button></td></tr>
</table>
</form>
<%
            }
            }
    catch(Exception e){}

    con.close();
%>
<br/><br/>
</div>



</div>
</div>
    </div>
</div><br/><br/><br/>
  <%@include file="footer.jsp" %>
    </body>
</html>
