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
        <script language="Javascript" type="text/javascript" src="editarea_0_8_2/editarea_0_8_2/edit_area/edit_area_full.js"></script>
	<script language="Javascript" type="text/javascript">
		// initialisation
		editAreaLoader.init({
			id: "example_1"	// id of the textarea to transform
			,start_highlight: true	// if start with highlight
			,allow_resize: "both"
			,allow_toggle: true
			,word_wrap: true
			,language: "en"
			,syntax: "php"
		});

		editAreaLoader.init({
			id: "example_2"	// id of the textarea to transform
			,start_highlight: true
			,allow_toggle: false
                        ,allow_resize: "both"
                        ,word_wrap: true
			,language: "en"
			,syntax: "cpp"
			,toolbar: "search, go_to_line, |, undo, redo, |, select_font, |, syntax_selection, |, change_smooth_selection, highlight, reset_highlight, |, help"
			,syntax_selection_allow: "css,html,js,php,python,vb,xml,c,cpp,sql,basic,pas,brainfuck"
			,is_multi_files: true
			,EA_load_callback: "editAreaLoaded"
			,show_line_colors: true
		});

		editAreaLoader.init({
			id: "example_3"	// id of the textarea to transform
			,start_highlight: true
			,font_size: "8"
			,font_family: "verdana, monospace"
			,allow_resize: "y"
			,allow_toggle: false
			,language: "fr"
			,syntax: "css"
			,toolbar: "new_document, save, load, |, charmap, |, search, go_to_line, |, undo, redo, |, select_font, |, change_smooth_selection, highlight, reset_highlight, |, help"
			,load_callback: "my_load"
			,save_callback: "my_save"
			,plugins: "charmap"
			,charmap_default: "arrows"

		});

		editAreaLoader.init({
			id: "example_4"	// id of the textarea to transform
			//,start_highlight: true	// if start with highlight
			//,font_size: "10"
			,allow_resize: "no"
			,allow_toggle: true
			,language: "de"
			,syntax: "python"
			,load_callback: "my_load"
			,save_callback: "my_save"
			,display: "later"
			,replace_tab_by_spaces: 4
			,min_height: 350
		});

		// callback functions
		function my_save(id, content){
			alert("Here is the content of the EditArea '"+ id +"' as received by the save callback function:\n"+content);
		}

		function my_load(id){
			editAreaLoader.setValue(id, "The content is loaded from the load_callback function into EditArea");
		}

		function test_setSelectionRange(id){
			editAreaLoader.setSelectionRange(id, 100, 150);
		}

		function test_getSelectionRange(id){
			var sel =editAreaLoader.getSelectionRange(id);
			alert("start: "+sel["start"]+"\nend: "+sel["end"]);
		}

		function test_setSelectedText(id){
			text= "[REPLACED SELECTION]";
			editAreaLoader.setSelectedText(id, text);
		}

		function test_getSelectedText(id){
			alert(editAreaLoader.getSelectedText(id));
		}

		function editAreaLoaded(id){
			if(id=="example_2")
			{
				open_file1();
				
			}
		}

		function open_file1()
		{
			var new_file= {id: "to\\ é # € to", text: "//write your code here", syntax: 'cpp', title: 'new file'};
			editAreaLoader.openFile('example_2', new_file);
		}

	

		function close_file1()
		{
			editAreaLoader.closeFile('example_2', "to\\ é # € to");
		}

		function toogle_editable(id)
		{
			editAreaLoader.execCommand(id, 'set_editable', !editAreaLoader.execCommand(id, 'is_editable'));
		}

	</script>


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
<div class="container">
    <div class="row">

        <div class="span2">
            <a href="profile.jsp" alt="profile">Back to Profile</a>
        </div>
<div class="span10">
  <c:if test='${not empty param["SuccessSol"]}'>
 <p style="color:green;font-weight:bold;">Solution Added successfully.</p>

</c:if>
<form action="addsolution" class="form-horizontal" method="post" >
                  <div class="control-group">
      <label class="control-label" for="pcodes">Problem Code</label>
      <div class="controls">
          <div class="input-prepend">
        <span class="add-on"><i class="icon-user"></i></span>
        <input type="text" class="input-large" name="pcodes" id="pcodes" placeholder="Problem Code" onkeyup="loadXMLDoc()"/>
              <span id="err"> </span>
          </div>
      </div>
    </div>


   	    <div class="control-group">
                  <label class="control-label" for="resource">Resource</label>
                  <div class="controls">
                      <div class="input-prepend">
                    <span class="add-on"><i class="icon-user"></i></span>

                            <select  name="resources">
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
                                          <label class="control-label" for="language">Language</label>
                                          <div class="controls">
                                              <div class="input-prepend">
                    <span class="add-on"><i class="icon-lock"></i></span>
                       <select  name="language">
                                    <option value="cpp">C++</option>
                                    <option value="c">C</option>
                                    <option value="java">Java</option>
                                    <option value="bash">Bash</option>
                                    <option value="c-sharp">C#</option>
                                    <option value="js">JavaScript</option>
                                    <option value="perl">Perl</option>
                                    <option value="text">TEXT</option>
                                    <option value="py">Python</option>
                                    <option value="ruby">Ruby</option>
                                    <option value="scala">Scala</option>
                                    <option value="sql">SQL</option>
                                    <option value="vb">VISUAL BASIC</option>
                                    <option value="css">CSS</option>
                                    <option value="xml">XML</option>
                                    <option value="haskell">HASKELL</option>
                                    <option value="other">OTHER</option>
                            </select>

                                          </div>
                                        </div>
                </div>

             <textarea id="example_2" style="height: 250px; width: 100%;" name="test_2">
		</textarea>
		
         <br/><br/>
         <center>
             <button type ="submit" class="btn btn-success">Submit</button></center>
          <br/> <br/>
     </form>
</div></div>
</div>
  <%@include file="footer.jsp" %>
    </body>
</html>
