package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import connection.Config;

public final class profile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(1);
    _jspx_dependants.add("/footer.jsp");
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fif_0026_005ftest;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<title>CodeShare</title>\n");
      out.write("<link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"assets/favicon.ico\"/>\n");
      out.write("<link href=\"assets/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("<link href=\"assets/css/bootstrap-responsive.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("<link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"assets/js/jquery.js\"></script>\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"assets/js/jquery-1.7.1.min.js\"></script>\n");
      out.write("\t\n");
      out.write("<style type=\"text/css\">\n");
      out.write("         .navbar-inner{\n");
      out.write("\t\t\t background:#000;\n");
      out.write("\t\t\t border-bottom:5px solid #007AF4;\n");
      out.write("\t\t\t height:70px;\n");
      out.write("\n");
      out.write("\t\t\t }\n");
      out.write("\t\t\t.navbar-inner .brand{color:#FFF}\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\t<script type=\"text/javascript\" src=\"assets/js/bootstrap-button.js\"></script>\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"assets/js/jquery.validate.min.js\"></script>\n");
      out.write("                <script type=\"text/javascript\" src=\"assets/js/bootstrap-tab.js\"></script>\n");
      out.write("                <script type=\"text/javascript\" src=\"assets/js/bootstrap-carousel.js\"></script>\n");
      out.write("                <script type=\"text/javascript\" src=\"assets/js/bootstrap-dropdown.js\"></script>\n");
      out.write("                <script src=\"assets/js/bootstrap-collapse.js\" type=\"text/javascript\"></script>\n");
      out.write("                <script type=\"text/javascript\" src=\"tinymce/js/tinymce/tinymce.js\"></script>\n");
      out.write("                <script src=\"assets/js/bootstrap.js\" type=\"text/javascript\"></script>\n");
      out.write("                <script type=\"text/javascript\" src=\"script1.js\"></script>\n");
      out.write("\n");
      out.write("<div class=\"navbar\">\n");
      out.write("<div class=\"navbar-inner\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("\n");
      out.write("\n");
      out.write("<a href=\"index.jsp\" class=\"brand\"> <img src=\"./assets/img/logo.png\" alt=\"CodeShare\" width=\"100px\" height=\"70px\"/></a>\n");
      out.write("<br/>\n");
      out.write("<h1 class=\"brand\" style=\"font-weight:bold;\">CodeShare</h1>\n");
      out.write("\n");
      out.write("<form action=\"logout\" method=\"post\" class=\"pull-right\">\n");
      out.write("<button class=\"btn btn-primary \" > logout </button>\n");
      out.write("</form>\n");
      out.write("\n");
      out.write("        <br/>\n");
      out.write("\n");
      out.write("        <div class=\"pull-right\" style=\"color:white;\">\n");
      out.write("        ");

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

      out.write("\n");
      out.write("\n");
      out.write("&nbsp;&nbsp;\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"container well\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("\n");
      out.write("        <div class=\"span3\">\n");
      out.write("\n");
      out.write("            <div style=\"border:5px #808080 solid;z-index:-100;height:200px;width:210px;\">\n");
      out.write("                <center><img  src=\"uploadimg/");
      out.print(picture);
      out.write("\" alt=\"Profile Pic\"  style=\"padding:5px;height:190px;width:200px\"/></center>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <br/>\n");
      out.write("            <ul class=\"nav nav-tabs nav-stacked nav-justified\"  style='background-color:white;'>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"./index.jsp\" >Home</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"#viewprofile\" data-toggle=\"tab\">Profile</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"#addtutorials\" data-toggle=\"tab\">Add Tutorials</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"#addques\" data-toggle=\"tab\">Add Problem</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"#addsol\" data-toggle=\"tab\">Add Solutions</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"#askques\" data-toggle=\"tab\">Ask a Question</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"#giveans\" data-toggle=\"tab\">Give Answer</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"#profile\" data-toggle=\"tab\">Edit Profile</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"#ChangPassword\" data-toggle=\"tab\">Change Password</a>\n");
      out.write("                    </li>\n");
      out.write("            </ul>\n");
      out.write("            <br/><br/>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("   <div id=\"maincontent\" class=\"span9\">\n");
      out.write("            <div id=\"myTabContent\" class=\"tab-content\" style=\"border:2px solid #a1a1a1;border-radius:10px;\">\n");
      out.write("\n");
      out.write("<div id=\"addtutorials\" class=\"span8 tab-pane\n");
      out.write("\n");
      out.write("\n");
      out.write("  ");
      if (_jspx_meth_c_005fif_005f0(_jspx_page_context))
        return;
      out.write("    \n");
      out.write("\n");
      out.write("      \" style=\"padding:20px 10px;\">\n");
      out.write("\n");
      out.write("  ");
      if (_jspx_meth_c_005fif_005f1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("\n");
      out.write("        tinyMCE.init({\n");
      out.write("\n");
      out.write("        mode : \"specific_textareas\",\n");
      out.write("        editor_selector : \"mceEditor\"\n");
      out.write("        });\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("    <form action=\"addtutorial\" class=\"form-horizontal\" method=\"post\">\n");
      out.write("     <div class=\"control-group\">\n");
      out.write("      <label class=\"control-label\" for=\"tcode\">Tutorial Code</label>\n");
      out.write("      <div class=\"controls\">\n");
      out.write("          <div class=\"input-prepend\">\n");
      out.write("        <span class=\"add-on\"><i class=\"icon-user\"></i></span>\n");
      out.write("        <input type=\"text\" class=\"input-large\" name=\"tcode\" id=\"tcode\" placeholder=\"Problem Code\" onkeyup=\"loadXMLDoc()\"/>\n");
      out.write("              <span id=\"err\"> </span>\n");
      out.write("          </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"control-group\">\n");
      out.write("                              <label class=\"control-label\" for=\"tname\">Tutorial Title</label>\n");
      out.write("                              <div class=\"controls\">\n");
      out.write("                                  <div class=\"input-prepend\">\n");
      out.write("        <span class=\"add-on\"><i class=\"icon-lock\"></i></span>\n");
      out.write("                                <input type=\"text\" class=\"input-large\" name=\"tname\" id=\"tname\" placeholder=\"Problem Name\"/>\n");
      out.write("                              </div>\n");
      out.write("                            </div>\n");
      out.write("    </div>\n");
      out.write("                <div class=\"control-group\">\n");
      out.write("                                          <label class=\"control-label\" for=\"category\">Category</label>\n");
      out.write("                                          <div class=\"controls\">\n");
      out.write("                                              <div class=\"input-prepend\">\n");
      out.write("                    <span class=\"add-on\"><i class=\"icon-lock\"></i></span>\n");
      out.write("                       <select  name=\"category\">\n");
      out.write("                                    <option value=\"DYNAMMICPROGRAMMING\">DYNAMMIC-PROGRAMMING</option>\n");
      out.write("                                    <option value=\"GREEDY\">GREEDY</option>\n");
      out.write("                                    <option value=\"DIVIDECONQUER\">DIVIDE-CONQUER</option>\n");
      out.write("                                    <option value=\"RECURSION\">RECURSION</option>\n");
      out.write("                                    <option value=\"BACKTRACKING\">BACKTRACKING</option>\n");
      out.write("                                    <option value=\"MAXFLOW\">MAXFLOW</option>   \n");
      out.write("                                    <option value=\"GRAPH\">GRAPH</option>\n");
      out.write("                                    <option value=\"TREE\">TREE</option>                                  \n");
      out.write("                                    <option value=\"SORTING\">SORTING</option>\n");
      out.write("                                    <option value=\"NUMBERTHEORY\">NUMBERTHEORY</option>\n");
      out.write("                                    <option value=\"SEARCHING\">SEARCHING</option>  \n");
      out.write("                                    <option value=\"ANALYSISOFALGO\">ANALYSIS OF ALGO</option>\n");
      out.write("                                    <option value=\"ADVANCEDDS\">ADVANCED DS</option>\n");
      out.write("                                    <option value=\"OTHER\">OTHER</option>\n");
      out.write("                            </select>\n");
      out.write("\n");
      out.write("                                          </div>\n");
      out.write("                                        </div>\n");
      out.write("                </div>\n");
      out.write("        <textarea class=\"mceEditor\"  name=\"tarea\" rows=\"15\" cols=\"50\"></textarea>\n");
      out.write("         <br/>\n");
      out.write("         <center>\n");
      out.write("             <button type =\"submit\" class=\"btn btn-success\">Submit</button></center>\n");
      out.write("         <br/><br/>\n");
      out.write("     </form>\n");
      out.write("     <br/><br/>\n");
      out.write("     </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<div id=\"addques\" class=\"span8 tab-pane\n");
      out.write("\n");
      out.write("\n");
      out.write("  ");
      if (_jspx_meth_c_005fif_005f2(_jspx_page_context))
        return;
      out.write("    \n");
      out.write("\n");
      out.write("      \" style=\"padding:20px 10px;\">\n");
      out.write("\n");
      out.write("  ");
      if (_jspx_meth_c_005fif_005f3(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("     <form action=\"addproblem\" class=\"form-horizontal\" method=\"post\">\n");
      out.write("     <div class=\"control-group\">\n");
      out.write("      <label class=\"control-label\" for=\"pcode\">Problem Code</label>\n");
      out.write("      <div class=\"controls\">\n");
      out.write("          <div class=\"input-prepend\">\n");
      out.write("        <span class=\"add-on\"><i class=\"icon-user\"></i></span>\n");
      out.write("        <input type=\"text\" class=\"input-large\" name=\"pcode\" id=\"pcode\" placeholder=\"Problem Code\" onkeyup=\"loadXMLDoc()\"/>\n");
      out.write("              <span id=\"err\"> </span>\n");
      out.write("          </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"control-group\">\n");
      out.write("                              <label class=\"control-label\" for=\"pname\">Problem Name</label>\n");
      out.write("                              <div class=\"controls\">\n");
      out.write("                                  <div class=\"input-prepend\">\n");
      out.write("        <span class=\"add-on\"><i class=\"icon-lock\"></i></span>\n");
      out.write("                                <input type=\"text\" class=\"input-large\" name=\"pname\" id=\"pname\" placeholder=\"Problem Name\"/>\n");
      out.write("                              </div>\n");
      out.write("                            </div>\n");
      out.write("    </div>\n");
      out.write("   \t    <div class=\"control-group\">\n");
      out.write("                  <label class=\"control-label\" for=\"resource\">Resource</label>\n");
      out.write("                  <div class=\"controls\">\n");
      out.write("                      <div class=\"input-prepend\">\n");
      out.write("                    <span class=\"add-on\"><i class=\"icon-user\"></i></span>\n");
      out.write("\n");
      out.write("                            <select  name=\"resource\">\n");
      out.write("                                    <option value=\"own\">OWN</option>\n");
      out.write("                                    <option value=\"spoj\">SPOJ</option>\n");
      out.write("                                    <option value=\"codechef\">CODECHEF</option>\n");
      out.write("                                    <option value=\"codeforces\">CODEFORCES</option>\n");
      out.write("                                    <option value=\"topcoder\">TOPCODER</option>\n");
      out.write("                                    <option value=\"timus\">TIMUS</option>\n");
      out.write("                                    <option value=\"acmicpc\">ACMICPC</option>\n");
      out.write("                                    <option value=\"uva\">UVA</option>\n");
      out.write("                                    <option value=\"projecteuler\">PROJECT EULER</option>\n");
      out.write("                                    <option value=\"codejam\">CODEJAM</option>\n");
      out.write("                                    <option value=\"livearchive\">LIVEARCHIVE</option>\n");
      out.write("                                    <option value=\"other\">OTHER</option>\n");
      out.write("                            </select>\n");
      out.write("                        <span id=\"err\"> </span>\n");
      out.write("                      </div>\n");
      out.write("                  </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"control-group\">\n");
      out.write("                                          <label class=\"control-label\" for=\"category\">Category</label>\n");
      out.write("                                          <div class=\"controls\">\n");
      out.write("                                              <div class=\"input-prepend\">\n");
      out.write("                    <span class=\"add-on\"><i class=\"icon-lock\"></i></span>\n");
      out.write("                       <select  name=\"category\">\n");
      out.write("                                    <option value=\"DYNAMMICPROGRAMMING\">DYNAMMIC-PROGRAMMING</option>\n");
      out.write("                                    <option value=\"GREEDY\">GREEDY</option>\n");
      out.write("                                    <option value=\"DIVIDECONQUER\">DIVIDE-CONQUER</option>\n");
      out.write("                                    <option value=\"BACKTRACKING\">BACKTRACKING</option>\n");
      out.write("                                    <option value=\"MAXFLOW\">MAXFLOW</option>\n");
      out.write("                                    <option value=\"BRUTEFORCE\">BRUTEFORCE</option>\n");
      out.write("                                    <option value=\"SIEVE\">SIEVE</option>\n");
      out.write("                                    <option value=\"BFSDFS\">BFS/DFS</option>\n");
      out.write("                                    <option value=\"MATH\">MATH</option>\n");
      out.write("                                    <option value=\"KRUSKAL\">KRUSKAL</option>\n");
      out.write("                                    <option value=\"PRIM\">PRIM</option\n");
      out.write("                                    <option value=\"GRAPH\">GRAPH</option\n");
      out.write("                                    <option value=\"TREE\">TREE</option>\n");
      out.write("                                    <option value=\"BINARYTREE\">BINARY TREE</option>\n");
      out.write("                                    <option value=\"SORTING\">SORTING</option>\n");
      out.write("                                    <option value=\"STACKQUEUE\">STACK/QUEUE</option>\n");
      out.write("                                    <option value=\"DIJKSTRA\">DIJKSTRA</option>\n");
      out.write("                                    <option value=\"BINARYSEARCH\">BINARY-SEARCH</option>\n");
      out.write("                                    <option value=\"SEARCHING\">SEARCHING</option>\n");
      out.write("                                    <option value=\"SEGMENTTREE\">SEGMENT TREE</option>\n");
      out.write("                                    <option value=\"RABINMILLER\">RABIN MILLER</option>\n");
      out.write("                                    <option value=\"BINARYINDEX TREE\">BINARY INDEX TREE</option>\n");
      out.write("                                    <option value=\"OTHER\">OTHER</option>\n");
      out.write("                            </select>\n");
      out.write("\n");
      out.write("                                          </div>\n");
      out.write("                                        </div>\n");
      out.write("                </div>\n");
      out.write("        <textarea class=\"mceEditor\"  name=\"tarea\" rows=\"15\" cols=\"50\"></textarea>\n");
      out.write("         <br/>\n");
      out.write("         <center>\n");
      out.write("             <button type =\"submit\" class=\"btn btn-success\">Submit</button></center>\n");
      out.write("         <br/><br/>\n");
      out.write("     </form>\n");
      out.write("     <br/><br/>\n");
      out.write("     </div>\n");
      out.write("     <br/><br/>\n");
      out.write("\n");
      out.write("\n");
      out.write(" <div id=\"addsol\" class=\"span8 tab-pane\n");
      out.write("\n");
      if (_jspx_meth_c_005fif_005f4(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\n");
      out.write("      \" style=\"padding:20px 10px;\" >\n");
      out.write("\n");
      out.write("  ");
      if (_jspx_meth_c_005fif_005f5(_jspx_page_context))
        return;
      out.write("\n");
      out.write("     <form action=\"addsolution\" class=\"form-horizontal\" method=\"post\" >\n");
      out.write("                  <div class=\"control-group\">\n");
      out.write("      <label class=\"control-label\" for=\"pcodes\">Problem Code</label>\n");
      out.write("      <div class=\"controls\">\n");
      out.write("          <div class=\"input-prepend\">\n");
      out.write("        <span class=\"add-on\"><i class=\"icon-user\"></i></span>\n");
      out.write("        <input type=\"text\" class=\"input-large\" name=\"pcodes\" id=\"pcodes\" placeholder=\"Problem Code\" onkeyup=\"loadXMLDoc()\"/>\n");
      out.write("              <span id=\"err\"> </span>\n");
      out.write("          </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("   \t    <div class=\"control-group\">\n");
      out.write("                  <label class=\"control-label\" for=\"resource\">Resource</label>\n");
      out.write("                  <div class=\"controls\">\n");
      out.write("                      <div class=\"input-prepend\">\n");
      out.write("                    <span class=\"add-on\"><i class=\"icon-user\"></i></span>\n");
      out.write("\n");
      out.write("                            <select  name=\"resources\">\n");
      out.write("                                    <option value=\"own\">OWN</option>\n");
      out.write("                                    <option value=\"spoj\">SPOJ</option>\n");
      out.write("                                    <option value=\"codechef\">CODECHEF</option>\n");
      out.write("                                    <option value=\"codeforces\">CODEFORCES</option>\n");
      out.write("                                    <option value=\"topcoder\">TOPCODER</option>\n");
      out.write("                                    <option value=\"timus\">TIMUS</option>\n");
      out.write("                                    <option value=\"acmicpc\">ACMICPC</option>\n");
      out.write("                                    <option value=\"uva\">UVA</option>\n");
      out.write("                                    <option value=\"projecteuler\">PROJECT EULER</option>\n");
      out.write("                                    <option value=\"codejam\">CODEJAM</option>\n");
      out.write("                                    <option value=\"livearchive\">LIVEARCHIVE</option>\n");
      out.write("                                    <option value=\"other\">OTHER</option>\n");
      out.write("                            </select>\n");
      out.write("                        <span id=\"err\"> </span>\n");
      out.write("                      </div>\n");
      out.write("                  </div>\n");
      out.write("                </div>\n");
      out.write("      \n");
      out.write("             <div class=\"control-group\">\n");
      out.write("                                          <label class=\"control-label\" for=\"language\">Language</label>\n");
      out.write("                                          <div class=\"controls\">\n");
      out.write("                                              <div class=\"input-prepend\">\n");
      out.write("                    <span class=\"add-on\"><i class=\"icon-lock\"></i></span>\n");
      out.write("                       <select  name=\"language\">\n");
      out.write("                                    <option value=\"cpp\">C++</option>\n");
      out.write("                                    <option value=\"c\">C</option>\n");
      out.write("                                    <option value=\"java\">Java</option>\n");
      out.write("                                    <option value=\"bash\">Bash</option>\n");
      out.write("                                    <option value=\"c-sharp\">C#</option>\n");
      out.write("                                    <option value=\"js\">JavaScript</option>\n");
      out.write("                                    <option value=\"perl\">Perl</option>\n");
      out.write("                                    <option value=\"text\">TEXT</option>\n");
      out.write("                                    <option value=\"py\">Python</option>\n");
      out.write("                                    <option value=\"ruby\">Ruby</option>\n");
      out.write("                                    <option value=\"scala\">Scala</option>\n");
      out.write("                                    <option value=\"sql\">SQL</option>\n");
      out.write("                                    <option value=\"vb\">VISUAL BASIC</option>\n");
      out.write("                                    <option value=\"css\">CSS</option>\n");
      out.write("                                    <option value=\"xml\">XML</option>\n");
      out.write("                                    <option value=\"haskell\">HASKELL</option>\n");
      out.write("                                    <option value=\"other\">OTHER</option>\n");
      out.write("                            </select>\n");
      out.write("\n");
      out.write("                                          </div>\n");
      out.write("                                        </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("         <textarea name=\"solutiontarea\" class=\"span8\" onkeyup=\"this.rows = (this.value.split('\\n').length||1);\" autocomplete=\"off\" role=\"textbox\" placeholder=\"Write your code here ... \" title=\"sourcecodes\" name=\"codes\"></textarea>\n");
      out.write("\n");
      out.write("         <br/><br/>\n");
      out.write("         <center>\n");
      out.write("             <button type =\"submit\" class=\"btn btn-success\">Submit</button></center>\n");
      out.write("          <br/> <br/>\n");
      out.write("     </form>\n");
      out.write("\n");
      out.write("     </div>\n");
      out.write("\n");
      out.write("\n");
      out.write(" <div id=\"askques\" class=\"span8 tab-pane\n");
      out.write("\n");
      out.write("  ");
      if (_jspx_meth_c_005fif_005f6(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("      \" style=\"padding:20px 10px;\" >\n");
      out.write("\n");
      out.write("\n");
      out.write("  ");
      if (_jspx_meth_c_005fif_005f7(_jspx_page_context))
        return;
      out.write("\n");
      out.write("   <form action=\"askquestion\" class=\"form-horizontal\" method=\"post\">\n");
      out.write("     <div class=\"control-group\">\n");
      out.write("      <label class=\"control-label\" for=\"qcode\">Question Code</label>\n");
      out.write("      <div class=\"controls\">\n");
      out.write("          <div class=\"input-prepend\">\n");
      out.write("        <span class=\"add-on\"><i class=\"icon-user\"></i></span>\n");
      out.write("        <input type=\"text\" class=\"input-large\" name=\"qcode\" id=\"qcode\" placeholder=\"Problem Code\" onkeyup=\"loadXMLDoc()\"/>\n");
      out.write("              <span id=\"err\"> </span>\n");
      out.write("          </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"control-group\">\n");
      out.write("                              <label class=\"control-label\" for=\"qtitle\">Question Title</label>\n");
      out.write("                              <div class=\"controls\">\n");
      out.write("                                  <div class=\"input-prepend\">\n");
      out.write("        <span class=\"add-on\"><i class=\"icon-lock\"></i></span>\n");
      out.write("                                <input type=\"text\" class=\"input-large\" name=\"qtitle\" id=\"qtitle\" placeholder=\"Problem Name\"/>\n");
      out.write("                              </div>\n");
      out.write("                            </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("                <div class=\"control-group\">\n");
      out.write("                                          <label class=\"control-label\" for=\"category\">Category</label>\n");
      out.write("                                          <div class=\"controls\">\n");
      out.write("                                              <div class=\"input-prepend\">\n");
      out.write("                    <span class=\"add-on\"><i class=\"icon-lock\"></i></span>\n");
      out.write("                       <select  name=\"category\">\n");
      out.write("                                    <option value=\"ComputersInternet\">Computers & Internet</option>\n");
      out.write("                                    <option value=\"EducationReference\">Education & Reference</option>\n");
      out.write("                                    <option value=\"Programming\">Programming</option>\n");
      out.write("                                    <option value=\"Other\">Other</option>\n");
      out.write("                            </select>\n");
      out.write("\n");
      out.write("                                          </div>\n");
      out.write("                                        </div>\n");
      out.write("                </div>\n");
      out.write("        <textarea class=\"mceEditor\"  name=\"tarea\" rows=\"15\" cols=\"50\"></textarea>\n");
      out.write("         <br/>\n");
      out.write("         <center>\n");
      out.write("             <button type =\"submit\" class=\"btn btn-success\">Submit</button></center>\n");
      out.write("         <br/><br/>\n");
      out.write("     </form>\n");
      out.write("\n");
      out.write("     </div>\n");
      out.write("\n");
      out.write("\n");
      out.write(" <div id=\"giveans\" class=\"span8 tab-pane\" style=\"padding:20px 10px;\" >\n");
      out.write("\n");
      out.write("   <form action=\"giveanswer.jsp\" class=\"form-horizontal\" method=\"post\">\n");
      out.write("                        <div class=\"control-group\">\n");
      out.write("                                          <label class=\"control-label\" for=\"category\">Category</label>\n");
      out.write("                                          <div class=\"controls\">\n");
      out.write("                                              <div class=\"input-prepend\">\n");
      out.write("                    <span class=\"add-on\"><i class=\"icon-lock\"></i></span>\n");
      out.write("                       <select  name=\"category\">\n");
      out.write("                                    <option value=\"ComputersInternet\">Computers & Internet</option>\n");
      out.write("                                    <option value=\"EducationReference\">Education & Reference</option>\n");
      out.write("                                    <option value=\"Programming\">Programming</option>\n");
      out.write("                                    <option value=\"Other\">Other</option>\n");
      out.write("                            </select>\n");
      out.write("\n");
      out.write("                                          </div>\n");
      out.write("                                        </div>\n");
      out.write("                </div>\n");
      out.write("         <br/>\n");
      out.write("         <center>\n");
      out.write("             <button type =\"submit\" class=\"btn btn-success\">Submit</button></center>\n");
      out.write("         <br/><br/>\n");
      out.write("     </form>\n");
      out.write("\n");
      out.write("     </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(" <div id=\"ChangPassword\" class=\"span8 tab-pane\n");
      if (_jspx_meth_c_005fif_005f8(_jspx_page_context))
        return;
      out.write('\n');
      out.write(' ');
      if (_jspx_meth_c_005fif_005f9(_jspx_page_context))
        return;
      out.write("\n");
      out.write(" \" style=\"padding:20px 10px;\">\n");
      out.write("<form  action ='passchange' id=\"contact-form4\" class=\"form-horizontal\" method=\"post\">\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t    <div class=\"control-group\">\n");
      out.write("\t\t\t\t\t\t      <label class=\"control-label\" for=\"passwd\">Current Password</label>\n");
      out.write("\t\t\t\t\t\t      <div class=\"controls\">\n");
      out.write("                                                          <div class=\"input-prepend\">\n");
      out.write("                                                        <span class=\"add-on\"><i class=\"icon-book\"></i></span>\n");
      out.write("                                                        <input type=\"password\" class=\"input-large\" name=\"passwd\" id=\"passwd\" placeholder=\"Current Password\" required=\"true\" onkeyup=\"loadXMLDoc()\"/>\n");
      out.write("                                                              <span id=\"err\"> </span>\n");
      out.write("                                                          </div>\n");
      out.write("                                                      </div>\n");
      out.write("\t\t\t\t\t\t    </div>\n");
      out.write("                                                    <div class=\"control-group\">\n");
      out.write("                                                                              <label class=\"control-label\" for=\"apasswd\">New Password</label>\n");
      out.write("                                                                              <div class=\"controls\">\n");
      out.write("                                                                                  <div class=\"input-prepend\">\n");
      out.write("                                                        <span class=\"add-on\"><i class=\"icon-barcode\"></i></span>\n");
      out.write("                                                                                <input type=\"password\" class=\"input-large\" name=\"apasswd\" id=\"apasswd\" required=\"true\" placeholder=\"New Password\"/>\n");
      out.write("                                                                              </div>\n");
      out.write("                                                                            </div>\n");
      out.write("                                                    </div>\n");
      out.write("                                                                                <div class=\"control-group\">\n");
      out.write("                                                                              <label class=\"control-label\" for=\"conpasswd\">Re Password</label>\n");
      out.write("                                                                              <div class=\"controls\">\n");
      out.write("                                                                                  <div class=\"input-prepend\">\n");
      out.write("                                                        <span class=\"add-on\"><i class=\"icon-barcode\"></i></span>\n");
      out.write("                                                                                <input type=\"password\" class=\"input-large\" name=\"conpasswd\" id=\"conpassword\" required=\"true\" placeholder=\"New Password\"/>\n");
      out.write("                                                                              </div>\n");
      out.write("                                                                            </div>\n");
      out.write("                                                    </div>\n");
      out.write("\n");
      out.write("                                                      <div class=\"control-group\">\n");
      out.write("                                                      <label class=\"control-label\"></label>\n");
      out.write("                                                      <div class=\"controls\">\n");
      if (_jspx_meth_c_005fif_005f10(_jspx_page_context))
        return;
      out.write('\n');
      out.write('\n');
      if (_jspx_meth_c_005fif_005f11(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                                      <button type=\"submit\" class=\"btn btn-success\">Submit</button>\n");
      out.write("                                                                        </div>\n");
      out.write("                                                                                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("</form>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(" <div id=\"viewprofile\" class=\"span8 tab-pane\n");
      out.write("  ");
      if (_jspx_meth_c_005fif_005f12(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("      \" style=\"padding:20px 10px;\">\n");
      out.write("\n");
      out.write("\n");
      out.write("    \n");
      out.write("\n");
      out.write("    <h1 style='color:#3399FF;'> Personal Details : </h1>\n");
      out.write(" ");

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

        
      out.write("\n");
      out.write("\t\t     <tr style=\"font-weight:bold;\">\n");
      out.write("                              <td>Name : </td>\n");
      out.write("                              <td>");
      out.print(name);
      out.write("</td>\n");
      out.write("                          </tr>\n");
      out.write("\t\t\t\t\t\t   <tr style=\"font-weight:bold;\">\n");
      out.write("                              <td>Institute : </td>\n");
      out.write("                              <td>");
      out.print(sem);
      out.write("</td>\n");
      out.write("                          </tr>\n");
      out.write("\t\t\t\t\t\t   <tr style=\"font-weight:bold;\">\n");
      out.write("                              <td>Email : </td>\n");
      out.write("                              <td>");
      out.print(email);
      out.write("</td>\n");
      out.write("                          </tr>\n");
      out.write("\t\t\t<tr style=\"font-weight:bold;\">\n");
      out.write("                              <td>Mobile: </td>\n");
      out.write("                              <td>");
      out.print(mobile);
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                       <tr style=\"font-weight:bold;\">\n");
      out.write("                              <td>Date of Birth: </td>\n");
      out.write("                              <td>");
      out.print(dob);
      out.write("</td>\n");
      out.write("                          </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("                          <tr style=\"font-weight:bold;\">\n");
      out.write("                              <td>Gender: </td>\n");
      out.write("                              <td>");
      out.print(sex);
      out.write("</td>\n");
      out.write("                          </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("                          <tr style=\"font-weight:bold;\">\n");
      out.write("                              <td>Address: </td>\n");
      out.write("                              <td><pre>");
      out.print(addr);
      out.write("</pre></td>\n");
      out.write("                          </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("                          <tr style=\"font-weight:bold;\">\n");
      out.write("                              <td>Current City: </td>\n");
      out.write("                              <td>");
      out.print(city);
      out.write("</td>\n");
      out.write("                          </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("                          <tr style=\"font-weight:bold;\">\n");
      out.write("                              <td>Country: </td>\n");
      out.write("                              <td>");
      out.print(cntry);
      out.write("</td>\n");
      out.write("                          </tr>\n");
      out.write("\n");
      out.write("                          <tr style=\"font-weight:bold;\">\n");
      out.write("                              <td>Website: </td>\n");
      out.write("                              <td>");
      out.print(website);
      out.write("</td>\n");
      out.write("                          </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("                          <tr style=\"font-weight:bold;\">\n");
      out.write("                              <td>About Me: </td>\n");
      out.write("                              <td><pre>");
      out.print(aboutme);
      out.write("</pre></td>\n");
      out.write("                          </tr>\n");
      out.write("\t\t\t   \n");
      out.write("\t\t\t");

			out.println("</table>");
                                }catch(Exception e)
                                        {}
			
      out.write("\n");
      out.write("                        <br/><br/>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<div id=\"profile\" class=\"span8 tab-pane\n");
      out.write("\n");
      if (_jspx_meth_c_005fif_005f13(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("     \">\n");
      out.write("\n");
      out.write("    ");
      if (_jspx_meth_c_005fif_005f14(_jspx_page_context))
        return;
      out.write('\n');
      out.write('\n');
      out.write(' ');

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
               
  
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<form action=\"profileupdate\" method=\"post\" enctype=\"multipart/form-data\" >\n");
      out.write("<table class=\"span8 table\">\n");
      out.write("    <tr><td style=\"font-weight:bold;color:#808080;\">Upload Image</td>\n");
      out.write("    <td><input type=\"file\" name=\"pic\" value=\"");
 out.print(pic); 
      out.write("\" /></td>\n");
      out.write("</tr>\n");
      out.write("<tr><td style=\"font-weight:bold;color:#808080;\">Full Name</td>\n");
      out.write("    <td><input type=\"text\" name=\"fname\" required=\"true\" class=\"span3\" placeholder=\"First Name\" value=\"");
 out.print(fname); 
      out.write("\" />\n");
      out.write("</td></tr>\n");
      out.write("\n");
      out.write("<tr><td style=\"font-weight:bold;color:#808080;\">Date Of Birth</td>\n");
      out.write("<td class=\"span3\">\n");
      out.write("<select style=\"width:80px\" name=\"day\">\n");

    if(dob=="")
        out.println("<option>Days</option>");
    else
        out.println("<option>"+days+"</option>");
for(int i=1;i<=31;i++)
{
	out.println("<option>"+i+"</option>");

}


      out.write("\n");
      out.write("</select>\n");
      out.write("<select style=\"width:80px\" name=\"month\">\n");
      out.write("\n");


    if(dob=="")
        out.println("<option>Months</option>");
    else
        out.println("<option>"+months+"</option>");


      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<option value=\"0\">01</option>\n");
      out.write("<option>02</option>\n");
      out.write("<option>03</option>\n");
      out.write("<option>04</option>\n");
      out.write("<option>05</option>\n");
      out.write("<option>06</option>\n");
      out.write("<option>07</option>\n");
      out.write("<option>08</option>\n");
      out.write("<option>09</option>\n");
      out.write("<option>10</option>\n");
      out.write("<option>11</option>\n");
      out.write("<option>12</option>\n");
      out.write("</select>\n");
      out.write("<select style=\"width:80px\" name=\"year\">\n");
      out.write("\n");

    if(dob=="")
        out.println("<option>Years</option>");
    else
        out.println("<option>"+years+"</option>");

for(int i=1960;i<2013;i++)
{
out.println("<option>"+i+"</option>");
}



      out.write("\n");
      out.write("</select>\n");
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("<tr><td style=\"font-weight:bold;color:#808080;\">Gender</td>\n");
      out.write("    <td><input type=\"radio\" name=\"sex\" value=\"Male\" value=\"");
 out.print(sex); 
      out.write('"');
      out.write(' ');
 if(sex.equals("Male"))out.print("checked");
      out.write(" />Male\n");
      out.write("<input type=\"radio\" name=\"sex\" value=\"Female\" value=\"");
 out.print(sex); 
      out.write('"');
      out.write(' ');
 if(sex.equals("Female"))out.print("checked");
      out.write(" />Female\n");
      out.write("</td></tr>\n");
      out.write("\n");
      out.write("<tr><td style=\"font-weight:bold;color:#808080;\">Mobile</td>\n");
      out.write("<td><input tabindex=\"text\" class=\"span3\" maxlength=\"10\" name=\"phone\" placeholder=\"Mobile Phones\" value=\"");
 out.print(phone); 
      out.write("\" /></td></tr>\n");
      out.write("<tr><td style=\"font-weight:bold;color:#808080;\">Current City</td>\n");
      out.write("    <td><input title=\"text\" class=\"span3\" name=\"ccity\" placeholder=\"Current City\" value=\"");
 out.print(ccity); 
      out.write("\" />\n");
      out.write("</td></tr>\n");
      out.write("<tr><td style=\"font-weight:bold;color:#808080;\">country</td>\n");
      out.write("<td><select style=\"width:280px\" name=\"country\" >\n");
      out.write("        ");

    if(country=="")
        out.println("<option>- - Select a country - -</option>");
    else
        out.println("<option>"+country+"</option>");


      out.write("\n");
      out.write("\n");
      out.write("<option value=\"AF\">Afghanistan</option>\n");
      out.write("<option value=\"AX\">Åland Islands</option>\n");
      out.write("<option value=\"AL\">Albania</option>\n");
      out.write("<option value=\"DZ\">Algeria</option>\n");
      out.write("<option value=\"AS\">American Samoa</option>\n");
      out.write("<option value=\"AD\">Andorra</option>\n");
      out.write("<option value=\"AO\">Angola</option>\n");
      out.write("<option value=\"AI\">Anguilla</option>\n");
      out.write("<option value=\"AQ\">Antarctica</option>\n");
      out.write("<option value=\"AG\">Antigua and Barbuda</option>\n");
      out.write("<option value=\"AR\">Argentina</option>\n");
      out.write("<option value=\"AM\">Armenia</option>\n");
      out.write("<option value=\"AW\">Aruba</option>\n");
      out.write("<option value=\"AU\">Australia</option>\n");
      out.write("<option value=\"AT\">Austria</option>\n");
      out.write("<option value=\"AZ\">Azerbaijan</option>\n");
      out.write("<option value=\"BS\">Bahamas</option>\n");
      out.write("<option value=\"BH\">Bahrain</option>\n");
      out.write("<option value=\"BD\">Bangladesh</option>\n");
      out.write("<option value=\"BB\">Barbados</option>\n");
      out.write("<option value=\"BY\">Belarus</option>\n");
      out.write("<option value=\"BE\">Belgium</option>\n");
      out.write("<option value=\"BZ\">Belize</option>\n");
      out.write("<option value=\"BJ\">Benin</option>\n");
      out.write("<option value=\"BM\">Bermuda</option>\n");
      out.write("<option value=\"BT\">Bhutan</option>\n");
      out.write("<option value=\"BO\">The Plurinational State of Bolivia</option>\n");
      out.write("<option value=\"BQ\">Bonaire, Sint Eustatius and Saba</option>\n");
      out.write("<option value=\"BA\">Bosnia and Herzegovina</option>\n");
      out.write("<option value=\"BW\">Botswana</option>\n");
      out.write("<option value=\"BV\">Bouvet Island</option>\n");
      out.write("<option value=\"BR\">Brazil</option>\n");
      out.write("<option value=\"IO\">British Indian Ocean Territory</option>\n");
      out.write("<option value=\"BN\">Brunei Darussalam</option>\n");
      out.write("<option value=\"BG\">Bulgaria</option>\n");
      out.write("<option value=\"BF\">Burkina Faso</option>\n");
      out.write("<option value=\"BI\">Burundi</option>\n");
      out.write("<option value=\"KH\">Cambodia</option>\n");
      out.write("<option value=\"CM\">Cameroon</option>\n");
      out.write("<option value=\"CA\">Canada</option>\n");
      out.write("<option value=\"CV\">Cape Verde</option>\n");
      out.write("<option value=\"KY\">Cayman Islands</option>\n");
      out.write("<option value=\"CF\">Central African Republic</option>\n");
      out.write("<option value=\"TD\">Chad</option>\n");
      out.write("<option value=\"CL\">Chile</option>\n");
      out.write("<option value=\"CN\">China</option>\n");
      out.write("<option value=\"CX\">Christmas Island</option>\n");
      out.write("<option value=\"CC\">Cocos (Keeling) Islands</option>\n");
      out.write("<option value=\"CO\">Colombia</option>\n");
      out.write("<option value=\"KM\">Comoros</option>\n");
      out.write("<option value=\"CG\">Congo</option>\n");
      out.write("<option value=\"CD\">Congo, The Democratic Republic Of The</option>\n");
      out.write("<option value=\"CK\">Cook Islands</option>\n");
      out.write("<option value=\"CR\">Costa Rica</option>\n");
      out.write("<option value=\"CI\">Cote D'Ivoire</option>\n");
      out.write("<option value=\"HR\">Croatia</option>\n");
      out.write("<option value=\"CU\">Cuba</option>\n");
      out.write("<option value=\"CW\">Curaçao</option>\n");
      out.write("<option value=\"CY\">Cyprus</option>\n");
      out.write("<option value=\"CZ\">Czech Republic</option>\n");
      out.write("<option value=\"DK\">Denmark</option>\n");
      out.write("<option value=\"DJ\">Djibouti</option>\n");
      out.write("<option value=\"DM\">Dominica</option>\n");
      out.write("<option value=\"DO\">Dominican Republic</option>\n");
      out.write("<option value=\"EC\">Ecuador</option>\n");
      out.write("<option value=\"EG\">Egypt</option>\n");
      out.write("<option value=\"SV\">El Salvador</option>\n");
      out.write("<option value=\"GQ\">Equatorial Guinea</option>\n");
      out.write("<option value=\"ER\">Eritrea</option>\n");
      out.write("<option value=\"EE\">Estonia</option>\n");
      out.write("<option value=\"ET\">Ethiopia</option>\n");
      out.write("<option value=\"FK\">Falkland Islands (Malvinas)</option>\n");
      out.write("<option value=\"FO\">Faroe Islands</option>\n");
      out.write("<option value=\"FJ\">Fiji</option>\n");
      out.write("<option value=\"FI\">Finland</option>\n");
      out.write("<option value=\"FR\">France</option>\n");
      out.write("<option value=\"GF\">French Guiana</option>\n");
      out.write("<option value=\"PF\">French Polynesia</option>\n");
      out.write("<option value=\"TF\">French Southern Territories</option>\n");
      out.write("<option value=\"GA\">Gabon</option>\n");
      out.write("<option value=\"GM\">Gambia</option>\n");
      out.write("<option value=\"GE\">Georgia</option>\n");
      out.write("<option value=\"DE\">Germany</option>\n");
      out.write("<option value=\"GH\">Ghana</option>\n");
      out.write("<option value=\"GI\">Gibraltar</option>\n");
      out.write("<option value=\"GR\">Greece</option>\n");
      out.write("<option value=\"GL\">Greenland</option>\n");
      out.write("<option value=\"GD\">Grenada</option>\n");
      out.write("<option value=\"GP\">Guadeloupe</option>\n");
      out.write("<option value=\"GU\">Guam</option>\n");
      out.write("<option value=\"GT\">Guatemala</option>\n");
      out.write("<option value=\"GG\">Guernsey</option>\n");
      out.write("<option value=\"GN\">Guinea</option>\n");
      out.write("<option value=\"GW\">Guinea-Bissau</option>\n");
      out.write("<option value=\"GY\">Guyana</option>\n");
      out.write("<option value=\"HT\">Haiti</option>\n");
      out.write("<option value=\"HM\">Heard Island and McDonald Islands</option>\n");
      out.write("<option value=\"VA\">Holy See (Vatican City State)</option>\n");
      out.write("<option value=\"HN\">Honduras</option>\n");
      out.write("<option value=\"HK\">Hong Kong</option>\n");
      out.write("<option value=\"HU\">Hungary</option>\n");
      out.write("<option value=\"IS\">Iceland</option>\n");
      out.write("<option value=\"IN\">India</option>\n");
      out.write("<option value=\"ID\">Indonesia</option>\n");
      out.write("<option value=\"IR\">Iran, Islamic Republic of</option>\n");
      out.write("<option value=\"IQ\">Iraq</option>\n");
      out.write("<option value=\"IE\">Ireland</option>\n");
      out.write("<option value=\"IL\">Israel</option>\n");
      out.write("<option value=\"IT\">Italy</option>\n");
      out.write("<option value=\"JM\">Jamaica</option>\n");
      out.write("<option value=\"JP\">Japan</option>\n");
      out.write("<option value=\"JE\">Jersey</option>\n");
      out.write("<option value=\"JO\">Jordan</option>\n");
      out.write("<option value=\"KZ\">Kazakhstan</option>\n");
      out.write("<option value=\"KE\">Kenya</option>\n");
      out.write("<option value=\"KI\">Kiribati</option>\n");
      out.write("<option value=\"KP\">Korea, Democratic People's Republic of (North)</option>\n");
      out.write("<option value=\"KR\">Korea, Republic of (South)</option>\n");
      out.write("<option value=\"KW\">Kuwait</option>\n");
      out.write("<option value=\"KG\">Kyrgyzstan</option>\n");
      out.write("<option value=\"LA\">Lao People's Democratic Republic</option>\n");
      out.write("<option value=\"LV\">Latvia</option>\n");
      out.write("<option value=\"LB\">Lebanon</option>\n");
      out.write("<option value=\"LS\">Lesotho</option>\n");
      out.write("<option value=\"LR\">Liberia</option>\n");
      out.write("<option value=\"LY\">Libyan Arab Jamahiriya</option>\n");
      out.write("<option value=\"LI\">Liechtenstein</option>\n");
      out.write("<option value=\"LT\">Lithuania</option>\n");
      out.write("<option value=\"LU\">Luxembourg</option>\n");
      out.write("<option value=\"MO\">Macao</option>\n");
      out.write("<option value=\"MK\">Macedonia, The Former Yugoslav Republic of</option>\n");
      out.write("<option value=\"MG\">Madagascar</option>\n");
      out.write("<option value=\"MW\">Malawi</option>\n");
      out.write("<option value=\"MY\">Malaysia</option>\n");
      out.write("<option value=\"MV\">Maldives</option>\n");
      out.write("<option value=\"ML\">Mali</option>\n");
      out.write("<option value=\"MT\">Malta</option>\n");
      out.write("<option value=\"MH\">Marshall Islands</option>\n");
      out.write("<option value=\"MQ\">Martinique</option>\n");
      out.write("<option value=\"MR\">Mauritania</option>\n");
      out.write("<option value=\"MU\">Mauritius</option>\n");
      out.write("<option value=\"YT\">Mayotte</option>\n");
      out.write("<option value=\"MX\">Mexico</option>\n");
      out.write("<option value=\"FM\">Micronesia, Federated States of</option>\n");
      out.write("<option value=\"MD\">Moldova, Republic of</option>\n");
      out.write("<option value=\"MC\">Monaco</option>\n");
      out.write("<option value=\"MN\">Mongolia</option>\n");
      out.write("<option value=\"ME\">Montenegro</option>\n");
      out.write("<option value=\"MS\">Montserrat</option>\n");
      out.write("<option value=\"MA\">Morocco</option>\n");
      out.write("<option value=\"MZ\">Mozambique</option>\n");
      out.write("<option value=\"MM\">Myanmar</option>\n");
      out.write("<option value=\"NA\">Namibia</option>\n");
      out.write("<option value=\"NR\">Nauru</option>\n");
      out.write("<option value=\"NP\">The Federal Democratic Republic of Nepal</option>\n");
      out.write("<option value=\"NL\">Netherlands</option>\n");
      out.write("<option value=\"NC\">New Caledonia</option>\n");
      out.write("<option value=\"NZ\">New Zealand</option>\n");
      out.write("<option value=\"NI\">Nicaragua</option>\n");
      out.write("<option value=\"NE\">Niger</option>\n");
      out.write("<option value=\"NG\">Nigeria</option>\n");
      out.write("<option value=\"NU\">Niue</option>\n");
      out.write("<option value=\"NF\">Norfolk Island</option>\n");
      out.write("<option value=\"MP\">Northern Mariana Islands</option>\n");
      out.write("<option value=\"NO\">Norway</option>\n");
      out.write("<option value=\"OM\">Oman</option>\n");
      out.write("<option value=\"PK\">Pakistan</option>\n");
      out.write("<option value=\"PW\">Palau</option>\n");
      out.write("<option value=\"PA\">Panama</option>\n");
      out.write("<option value=\"PG\">Papua New Guinea</option>\n");
      out.write("<option value=\"PY\">Paraguay</option>\n");
      out.write("<option value=\"PE\">Peru</option>\n");
      out.write("<option value=\"PH\">Philippines</option>\n");
      out.write("<option value=\"PN\">Pitcairn</option>\n");
      out.write("<option value=\"PL\">Poland</option>\n");
      out.write("<option value=\"PT\">Portugal</option>\n");
      out.write("<option value=\"PR\">Puerto Rico</option>\n");
      out.write("<option value=\"QA\">Qatar</option>\n");
      out.write("<option value=\"RE\">Reunion</option>\n");
      out.write("<option value=\"RO\">Romania</option>\n");
      out.write("<option value=\"RU\">Russian Federation</option>\n");
      out.write("<option value=\"RW\">Rwanda</option>\n");
      out.write("<option value=\"BL\">Saint Barthelemy</option>\n");
      out.write("<option value=\"SH\">Saint Helena, Ascension and Tristan da Cunha</option>\n");
      out.write("<option value=\"KN\">Saint Kitts and Nevis</option>\n");
      out.write("<option value=\"LC\">Saint Lucia</option>\n");
      out.write("<option value=\"MF\">Saint Martin</option>\n");
      out.write("<option value=\"PM\">Saint Pierre and Miquelon</option>\n");
      out.write("<option value=\"VC\">Saint Vincent and the Grenadines</option>\n");
      out.write("<option value=\"WS\">Samoa</option>\n");
      out.write("<option value=\"SM\">San Marino</option>\n");
      out.write("<option value=\"ST\">Sao Tome and Principe</option>\n");
      out.write("<option value=\"SA\">Saudi Arabia</option>\n");
      out.write("<option value=\"SN\">Senegal</option>\n");
      out.write("<option value=\"RS\">Serbia</option>\n");
      out.write("<option value=\"SC\">Seychelles</option>\n");
      out.write("<option value=\"SL\">Sierra leone</option>\n");
      out.write("<option value=\"SG\">Singapore</option>\n");
      out.write("<option value=\"SX\">Sint Maarten (Dutch Part)</option>\n");
      out.write("<option value=\"SK\">Slovakia</option>\n");
      out.write("<option value=\"SI\">Slovenia</option>\n");
      out.write("<option value=\"SB\">Solomon Islands</option>\n");
      out.write("<option value=\"SO\">Somalia</option>\n");
      out.write("<option value=\"ZA\">South Africa</option>\n");
      out.write("<option value=\"GS\">South Georgia and the South Sandwich Islands</option>\n");
      out.write("<option value=\"ES\">Spain</option>\n");
      out.write("<option value=\"LK\">Sri Lanka</option>\n");
      out.write("<option value=\"SD\">Sudan</option>\n");
      out.write("<option value=\"SS\">South Sudan</option>\n");
      out.write("<option value=\"SR\">Suriname</option>\n");
      out.write("<option value=\"SJ\">Svalbard and Jan Mayen</option>\n");
      out.write("<option value=\"SZ\">Swaziland</option>\n");
      out.write("<option value=\"SE\">Sweden</option>\n");
      out.write("<option value=\"CH\">Switzerland</option>\n");
      out.write("<option value=\"SY\">Syrian Arab Republic</option>\n");
      out.write("<option value=\"TW\">Taiwan</option>\n");
      out.write("<option value=\"TJ\">Tajikistan</option>\n");
      out.write("<option value=\"TZ\">Tanzania, United Republic of</option>\n");
      out.write("<option value=\"TH\">Thailand</option>\n");
      out.write("<option value=\"TL\">Timor-Leste</option>\n");
      out.write("<option value=\"TG\">Togo</option>\n");
      out.write("<option value=\"TK\">Tokelau</option>\n");
      out.write("<option value=\"TO\">Tonga</option>\n");
      out.write("<option value=\"TT\">Trinidad and Tobago</option>\n");
      out.write("<option value=\"TN\">Tunisia</option>\n");
      out.write("<option value=\"TR\">Turkey</option>\n");
      out.write("<option value=\"TM\">Turkmenistan</option>\n");
      out.write("<option value=\"TC\">Turks and Caicos Islands</option>\n");
      out.write("<option value=\"TV\">Tuvalu</option>\n");
      out.write("<option value=\"UG\">Uganda</option>\n");
      out.write("<option value=\"UA\">Ukraine</option>\n");
      out.write("<option value=\"AE\">United Arab Emirates</option>\n");
      out.write("<option value=\"GB\">United Kingdom</option>\n");
      out.write("<option value=\"UM\">United States Minor Outlying Islands</option>\n");
      out.write("<option value=\"US\">United States</option>\n");
      out.write("<option value=\"UY\">Uruguay</option>\n");
      out.write("<option value=\"UZ\">Uzbekistan</option>\n");
      out.write("<option value=\"VU\">Vanuatu</option>\n");
      out.write("<option value=\"VE\">Venezuela</option>\n");
      out.write("<option value=\"VN\">Viet Nam</option>\n");
      out.write("<option value=\"VG\">Virgin Islands, British</option>\n");
      out.write("<option value=\"VI\">Virgin Islands, U.S.</option>\n");
      out.write("<option value=\"WF\">Wallis and Futuna</option>\n");
      out.write("<option value=\"EH\">Western Sahara</option>\n");
      out.write("<option value=\"YE\">Yemen</option>\n");
      out.write("<option value=\"ZM\">Zambia</option>\n");
      out.write("<option value=\"ZW\">Zimbabwe</option>\n");
      out.write("</select>\n");
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("<tr><td style=\"font-weight:bold;color:#808080;\">Address</td>\n");
      out.write("<td><textarea rows=\"3\" cols=\"60\" name=\"address\" placeholder=\"Address\" class=\"span3\" value=\"");
 out.print(address); 
      out.write('"');
      out.write('>');
      out.write(' ');
if(address!="")out.print(address);
      out.write("  </textarea></td></tr>\n");
      out.write("<tr><td style=\"font-weight:bold;color:#808080;\">Website</td>\n");
      out.write("    <td><input type=\"text\" class=\"span3\" name=\"website\" placeholder=\"Website\" value=\"");
out.print(website);
      out.write("\" /></td></tr>\n");
      out.write("    <tr><td style=\"font-weight:bold;color:#808080;\">About Me</td>\n");
      out.write("        <td><textarea  rows=\"3\" cols=\"60\" name=\"aboutme\" class=\"span3\" placeholder=\"About Me\" value=\"");
 out.print(aboutme); 
      out.write('"');
      out.write('>');
      out.write(' ');
if(aboutme!="")out.print(aboutme);
      out.write("</textarea>\n");
      out.write("        </td></tr>\n");
      out.write("    <tr><td><button class=\"btn btn-info\" type=\"submit\">Save</button></td>\n");
      out.write("        <td><button class=\"btn btn-error\" type=\"submit\">Cancel</button></td></tr>\n");
      out.write("</table>\n");
      out.write("</form>\n");

            }
            }
    catch(Exception e){}

    con.close();

      out.write("\n");
      out.write("<br/><br/>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("    </div>\n");
      out.write("</div><br/><br/><br/>\n");
      out.write("  ");
      out.write("\n");
      out.write("<div class=\"footer\">       \n");
      out.write("<div class=\"navbar navbar-fixed-bottom\" style=\" margin-bottom: 0px\">\n");
      out.write("                      <div class=\"navbar-inner\" style=\"background:#000; border-bottom:0px;\">\n");
      out.write("           <center style=\"color:white\"><a href=\"#myModal3\"  data-toggle=\"modal\" ><b>Contact Us</b></a> || <a href=\"#myModal\" data-toggle=\"modal\"><b>Feedback</b></a></center>\n");
      out.write("           \n");
      out.write("        <center style=\"color: white\">Copyright &copy; 2013 CodeShare, All rights reserved Disclaimer</center>\n");
      out.write("        <center style=\"color: white\">The website is at its BETA phase. Please help us to improve the website by giving your feedback.</center>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("       </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("<div id=\"myModal\" class=\"modal hide fade\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\" style=\"height: 800px; width: 700px\">\n");
      out.write("<div class=\"modal-header\">\n");
      out.write("<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">X</button>\n");
      out.write("<h3 id=\"myModalLabel\">Feedback form</h3>\n");
      out.write("</div>\n");
      out.write("<div class=\"modal-body\">\n");
      out.write(" <form action=\"feedback\" id=\"contact-form2\" class=\"form-horizontal\" method=\"post\">\n");
      out.write("\n");
      out.write("                                                      <div class=\"control-group\">\n");
      out.write("\t\t\t\t\t\t      <label class=\"control-label\" for=\"fname\">Name</label>\n");
      out.write("\t\t\t\t\t\t      <div class=\"controls\">\n");
      out.write("\n");
      out.write("                                                        <input type=\"text\" class=\"input-large span5\" name=\"fname\"  required id=\"fname\" placeholder=\"Name\" onkeyup=\"loadXMLDoc()\"/>\n");
      out.write("                                                              <span id=\"err\"> </span>\n");
      out.write("\n");
      out.write("                                                      </div>\n");
      out.write("\t\t\t\t\t\t    </div>\n");
      out.write("                                                    <div class=\"control-group\">\n");
      out.write("                                                      <label class=\"control-label\" for=\"email\">Email Address</label>\n");
      out.write("                                                      <div class=\"controls\">\n");
      out.write("                                                       <input type=\"email\" class=\"input-large span5\" name=\"email\" required id=\"email\" placeholder=\"Email address\"/>\n");
      out.write("                                                       </div>\n");
      out.write("                                                    </div>\n");
      out.write("\t\t\t\t\t\t    <div class=\"control-group\">\n");
      out.write("\t\t\t\t\t\t      <label class=\"control-label\" for=\"number\">Mobile No.</label>\n");
      out.write("\t\t\t\t\t\t      <div class=\"controls\">\n");
      out.write("                                                <input type=\"text\" class=\"input-large span5\" name=\"number\" id=\"number\" required maxlength=\"10\" placeholder=\"Mobile number\"/>\n");
      out.write("\t\t\t\t\t           </div>\n");
      out.write("                                                    </div>\n");
      out.write("                                                     <div class=\"control-group\">\n");
      out.write("\t\t\t\t\t\t      <label class=\"control-label\" for=\"comment\">Comment</label>\n");
      out.write("\t\t\t\t\t\t      <div class=\"controls\">\n");
      out.write("                                                        <textarea required=\"true\" class=\"form-control span5\" name=\"comment\" id=\"comment\" rows=\"8\" placeholder=\"Put youe Comment......\" required=\"true\">\n");
      out.write("                                                        </textarea>\n");
      out.write("                                                        <span id=\"err\"> </span>\n");
      out.write("                                                        </div>\n");
      out.write("\t\t\t\t\t\t    </div>\n");
      out.write("           <div class=\"control-group\">\n");
      out.write("                                                      <label class=\"control-label\"></label>\n");
      out.write("                                                      <div class=\"controls\">\n");
      out.write("                                                      <button type=\"submit\" class=\"btn btn-success btn-large\" data-loading-text=\"Loading...\">Send</button>\n");
      out.write("                                                                        </div>\n");
      out.write("                                                                                </div>\n");
      out.write("      </form>\n");
      out.write("\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div id=\"myModal3\" class=\"modal hide fade\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\">\n");
      out.write("    <div class=\"modal-header\">\n");
      out.write("    <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">X</button>\n");
      out.write("    <h3 id=\"myModalLabel\">Contact Us</h3>\n");
      out.write("    </div>\n");
      out.write("    <div align=\"center\" class=\"modal-body lead\" style='color:#808080 ;font-weight: bold;' >\n");
      out.write("   \n");
      out.write("        <p>\n");
      out.write("            Abdul Qadir Faridi </p>\n");
      out.write("        <p>\n");
      out.write("            Email : <a href=\"mailto:aqfaridi@gmail.com\">aqfaridi@gmail.com</a>  </p>\n");
      out.write("         <p>\n");
      out.write("            Mobile : +91 7566062327  </p>\n");
      out.write("         <br />\n");
      out.write("        <p>    Pankaj Chaudhary </p>\n");
      out.write("        <p>\n");
      out.write("            Email : <a href=\"mailto:pankaj9310@gmail.com\">pankaj9310@gmail.com</a> </p>\n");
      out.write("        <p>\n");
      out.write("            Mobile : +91 8989931101 </p>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_005fif_005f0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_005fif_005f0.setPageContext(_jspx_page_context);
    _jspx_th_c_005fif_005f0.setParent(null);
    // /profile.jsp(142,2) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_c_005fif_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${not empty param[\"SuccessTut\"]}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null, false)).booleanValue());
    int _jspx_eval_c_005fif_005f0 = _jspx_th_c_005fif_005f0.doStartTag();
    if (_jspx_eval_c_005fif_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("active\n");
        int evalDoAfterBody = _jspx_th_c_005fif_005f0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_005fif_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f0);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f0);
    return false;
  }

  private boolean _jspx_meth_c_005fif_005f1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_005fif_005f1.setPageContext(_jspx_page_context);
    _jspx_th_c_005fif_005f1.setParent(null);
    // /profile.jsp(148,2) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_c_005fif_005f1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${not empty param[\"SuccessTut\"]}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null, false)).booleanValue());
    int _jspx_eval_c_005fif_005f1 = _jspx_th_c_005fif_005f1.doStartTag();
    if (_jspx_eval_c_005fif_005f1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write(" <p style=\"color:green;font-weight:bold;\">Tutorial Added successfully.</p>\n");
        out.write("\n");
        int evalDoAfterBody = _jspx_th_c_005fif_005f1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_005fif_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f1);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f1);
    return false;
  }

  private boolean _jspx_meth_c_005fif_005f2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f2 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_005fif_005f2.setPageContext(_jspx_page_context);
    _jspx_th_c_005fif_005f2.setParent(null);
    // /profile.jsp(227,2) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_c_005fif_005f2.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${not empty param[\"Success\"]}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null, false)).booleanValue());
    int _jspx_eval_c_005fif_005f2 = _jspx_th_c_005fif_005f2.doStartTag();
    if (_jspx_eval_c_005fif_005f2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("active\n");
        int evalDoAfterBody = _jspx_th_c_005fif_005f2.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_005fif_005f2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f2);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f2);
    return false;
  }

  private boolean _jspx_meth_c_005fif_005f3(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f3 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_005fif_005f3.setPageContext(_jspx_page_context);
    _jspx_th_c_005fif_005f3.setParent(null);
    // /profile.jsp(233,2) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_c_005fif_005f3.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${not empty param[\"Success\"]}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null, false)).booleanValue());
    int _jspx_eval_c_005fif_005f3 = _jspx_th_c_005fif_005f3.doStartTag();
    if (_jspx_eval_c_005fif_005f3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write(" <p style=\"color:green;font-weight:bold;\">Problem Added successfully.</p>\n");
        out.write("\n");
        int evalDoAfterBody = _jspx_th_c_005fif_005f3.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_005fif_005f3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f3);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f3);
    return false;
  }

  private boolean _jspx_meth_c_005fif_005f4(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f4 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_005fif_005f4.setPageContext(_jspx_page_context);
    _jspx_th_c_005fif_005f4.setParent(null);
    // /profile.jsp(330,0) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_c_005fif_005f4.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${not empty param[\"SuccessSol\"]}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null, false)).booleanValue());
    int _jspx_eval_c_005fif_005f4 = _jspx_th_c_005fif_005f4.doStartTag();
    if (_jspx_eval_c_005fif_005f4 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("active\n");
        out.write("\n");
        int evalDoAfterBody = _jspx_th_c_005fif_005f4.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_005fif_005f4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f4);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f4);
    return false;
  }

  private boolean _jspx_meth_c_005fif_005f5(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f5 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_005fif_005f5.setPageContext(_jspx_page_context);
    _jspx_th_c_005fif_005f5.setParent(null);
    // /profile.jsp(337,2) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_c_005fif_005f5.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${not empty param[\"SuccessSol\"]}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null, false)).booleanValue());
    int _jspx_eval_c_005fif_005f5 = _jspx_th_c_005fif_005f5.doStartTag();
    if (_jspx_eval_c_005fif_005f5 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write(" <p style=\"color:green;font-weight:bold;\">Solution Added successfully.</p>\n");
        out.write("\n");
        int evalDoAfterBody = _jspx_th_c_005fif_005f5.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_005fif_005f5.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f5);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f5);
    return false;
  }

  private boolean _jspx_meth_c_005fif_005f6(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f6 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_005fif_005f6.setPageContext(_jspx_page_context);
    _jspx_th_c_005fif_005f6.setParent(null);
    // /profile.jsp(421,2) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_c_005fif_005f6.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${not empty param[\"SuccessAsk\"]}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null, false)).booleanValue());
    int _jspx_eval_c_005fif_005f6 = _jspx_th_c_005fif_005f6.doStartTag();
    if (_jspx_eval_c_005fif_005f6 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write(" active\n");
        int evalDoAfterBody = _jspx_th_c_005fif_005f6.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_005fif_005f6.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f6);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f6);
    return false;
  }

  private boolean _jspx_meth_c_005fif_005f7(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f7 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_005fif_005f7.setPageContext(_jspx_page_context);
    _jspx_th_c_005fif_005f7.setParent(null);
    // /profile.jsp(429,2) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_c_005fif_005f7.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${not empty param[\"SuccessAsk\"]}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null, false)).booleanValue());
    int _jspx_eval_c_005fif_005f7 = _jspx_th_c_005fif_005f7.doStartTag();
    if (_jspx_eval_c_005fif_005f7 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write(" <p style=\"color:green;font-weight:bold;\">Question Added successfully.</p>\n");
        out.write("\n");
        int evalDoAfterBody = _jspx_th_c_005fif_005f7.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_005fif_005f7.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f7);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f7);
    return false;
  }

  private boolean _jspx_meth_c_005fif_005f8(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f8 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_005fif_005f8.setPageContext(_jspx_page_context);
    _jspx_th_c_005fif_005f8.setParent(null);
    // /profile.jsp(509,0) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_c_005fif_005f8.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${not empty param[\"SuccessPass\"]}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null, false)).booleanValue());
    int _jspx_eval_c_005fif_005f8 = _jspx_th_c_005fif_005f8.doStartTag();
    if (_jspx_eval_c_005fif_005f8 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write(" active\n");
        int evalDoAfterBody = _jspx_th_c_005fif_005f8.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_005fif_005f8.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f8);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f8);
    return false;
  }

  private boolean _jspx_meth_c_005fif_005f9(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f9 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_005fif_005f9.setPageContext(_jspx_page_context);
    _jspx_th_c_005fif_005f9.setParent(null);
    // /profile.jsp(512,1) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_c_005fif_005f9.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${not empty param[\"FailedPass\"]}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null, false)).booleanValue());
    int _jspx_eval_c_005fif_005f9 = _jspx_th_c_005fif_005f9.doStartTag();
    if (_jspx_eval_c_005fif_005f9 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write(" active\n");
        int evalDoAfterBody = _jspx_th_c_005fif_005f9.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_005fif_005f9.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f9);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f9);
    return false;
  }

  private boolean _jspx_meth_c_005fif_005f10(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f10 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_005fif_005f10.setPageContext(_jspx_page_context);
    _jspx_th_c_005fif_005f10.setParent(null);
    // /profile.jsp(550,0) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_c_005fif_005f10.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${not empty param[\"SuccessPass\"]}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null, false)).booleanValue());
    int _jspx_eval_c_005fif_005f10 = _jspx_th_c_005fif_005f10.doStartTag();
    if (_jspx_eval_c_005fif_005f10 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write(" <p style=\"color:green;font-weight:bold;\">Your Password is changed successfully.</p>\n");
        int evalDoAfterBody = _jspx_th_c_005fif_005f10.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_005fif_005f10.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f10);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f10);
    return false;
  }

  private boolean _jspx_meth_c_005fif_005f11(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f11 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_005fif_005f11.setPageContext(_jspx_page_context);
    _jspx_th_c_005fif_005f11.setParent(null);
    // /profile.jsp(554,0) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_c_005fif_005f11.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${not empty param[\"FailedPass\"]}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null, false)).booleanValue());
    int _jspx_eval_c_005fif_005f11 = _jspx_th_c_005fif_005f11.doStartTag();
    if (_jspx_eval_c_005fif_005f11 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write(" <p style=\"color:red;font-weight:bold;\">Wrong current Password.</p>\n");
        out.write("\n");
        int evalDoAfterBody = _jspx_th_c_005fif_005f11.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_005fif_005f11.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f11);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f11);
    return false;
  }

  private boolean _jspx_meth_c_005fif_005f12(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f12 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_005fif_005f12.setPageContext(_jspx_page_context);
    _jspx_th_c_005fif_005f12.setParent(null);
    // /profile.jsp(571,2) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_c_005fif_005f12.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${!((not empty param[\"SuccessUpdate\"]) || (not empty param[\"FailedPass\"]) || (not empty param[\"SuccessAsk\"]) || (not empty param[\"Success\"]) || (not empty param[\"SuccessSol\"]) || (not empty param[\"SuccessTut\"]) || (not empty param[\"SuccessPass\"]))}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null, false)).booleanValue());
    int _jspx_eval_c_005fif_005f12 = _jspx_th_c_005fif_005f12.doStartTag();
    if (_jspx_eval_c_005fif_005f12 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write(" active\n");
        int evalDoAfterBody = _jspx_th_c_005fif_005f12.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_005fif_005f12.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f12);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f12);
    return false;
  }

  private boolean _jspx_meth_c_005fif_005f13(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f13 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_005fif_005f13.setPageContext(_jspx_page_context);
    _jspx_th_c_005fif_005f13.setParent(null);
    // /profile.jsp(700,0) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_c_005fif_005f13.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${not empty param[\"SuccessUpdate\"]}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null, false)).booleanValue());
    int _jspx_eval_c_005fif_005f13 = _jspx_th_c_005fif_005f13.doStartTag();
    if (_jspx_eval_c_005fif_005f13 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("active\n");
        int evalDoAfterBody = _jspx_th_c_005fif_005f13.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_005fif_005f13.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f13);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f13);
    return false;
  }

  private boolean _jspx_meth_c_005fif_005f14(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f14 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_005fif_005f14.setPageContext(_jspx_page_context);
    _jspx_th_c_005fif_005f14.setParent(null);
    // /profile.jsp(707,4) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_c_005fif_005f14.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${not empty param[\"SuccessUpdate\"]}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null, false)).booleanValue());
    int _jspx_eval_c_005fif_005f14 = _jspx_th_c_005fif_005f14.doStartTag();
    if (_jspx_eval_c_005fif_005f14 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write(" <p style=\"color:green;font-weight:bold;\">Profile Updated successfully.</p>\n");
        int evalDoAfterBody = _jspx_th_c_005fif_005f14.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_005fif_005f14.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f14);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f14);
    return false;
  }
}
