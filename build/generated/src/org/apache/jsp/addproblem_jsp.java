package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import connection.Config;

public final class addproblem_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write(' ');
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
      out.write("\n");
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
      out.write("        <script language=\"Javascript\" type=\"text/javascript\" src=\"editarea_0_8_2/editarea_0_8_2/edit_area/edit_area_full.js\"></script>\n");
      out.write("\t<script language=\"Javascript\" type=\"text/javascript\">\n");
      out.write("\t\t// initialisation\n");
      out.write("\t\teditAreaLoader.init({\n");
      out.write("\t\t\tid: \"example_1\"\t// id of the textarea to transform\n");
      out.write("\t\t\t,start_highlight: true\t// if start with highlight\n");
      out.write("\t\t\t,allow_resize: \"both\"\n");
      out.write("\t\t\t,allow_toggle: true\n");
      out.write("\t\t\t,word_wrap: true\n");
      out.write("\t\t\t,language: \"en\"\n");
      out.write("\t\t\t,syntax: \"php\"\n");
      out.write("\t\t});\n");
      out.write("\n");
      out.write("\t\teditAreaLoader.init({\n");
      out.write("\t\t\tid: \"example_2\"\t// id of the textarea to transform\n");
      out.write("\t\t\t,start_highlight: true\n");
      out.write("\t\t\t,allow_toggle: false\n");
      out.write("                        ,allow_resize: \"both\"\n");
      out.write("                        ,word_wrap: true\n");
      out.write("\t\t\t,language: \"en\"\n");
      out.write("\t\t\t,syntax: \"cpp\"\n");
      out.write("\t\t\t,toolbar: \"search, go_to_line, |, undo, redo, |, select_font, |, syntax_selection, |, change_smooth_selection, highlight, reset_highlight, |, help\"\n");
      out.write("\t\t\t,syntax_selection_allow: \"css,html,js,php,python,vb,xml,c,cpp,sql,basic,pas,brainfuck\"\n");
      out.write("\t\t\t,is_multi_files: true\n");
      out.write("\t\t\t,EA_load_callback: \"editAreaLoaded\"\n");
      out.write("\t\t\t,show_line_colors: true\n");
      out.write("\t\t});\n");
      out.write("\n");
      out.write("\t\teditAreaLoader.init({\n");
      out.write("\t\t\tid: \"example_3\"\t// id of the textarea to transform\n");
      out.write("\t\t\t,start_highlight: true\n");
      out.write("\t\t\t,font_size: \"8\"\n");
      out.write("\t\t\t,font_family: \"verdana, monospace\"\n");
      out.write("\t\t\t,allow_resize: \"y\"\n");
      out.write("\t\t\t,allow_toggle: false\n");
      out.write("\t\t\t,language: \"fr\"\n");
      out.write("\t\t\t,syntax: \"css\"\n");
      out.write("\t\t\t,toolbar: \"new_document, save, load, |, charmap, |, search, go_to_line, |, undo, redo, |, select_font, |, change_smooth_selection, highlight, reset_highlight, |, help\"\n");
      out.write("\t\t\t,load_callback: \"my_load\"\n");
      out.write("\t\t\t,save_callback: \"my_save\"\n");
      out.write("\t\t\t,plugins: \"charmap\"\n");
      out.write("\t\t\t,charmap_default: \"arrows\"\n");
      out.write("\n");
      out.write("\t\t});\n");
      out.write("\n");
      out.write("\t\teditAreaLoader.init({\n");
      out.write("\t\t\tid: \"example_4\"\t// id of the textarea to transform\n");
      out.write("\t\t\t//,start_highlight: true\t// if start with highlight\n");
      out.write("\t\t\t//,font_size: \"10\"\n");
      out.write("\t\t\t,allow_resize: \"no\"\n");
      out.write("\t\t\t,allow_toggle: true\n");
      out.write("\t\t\t,language: \"de\"\n");
      out.write("\t\t\t,syntax: \"python\"\n");
      out.write("\t\t\t,load_callback: \"my_load\"\n");
      out.write("\t\t\t,save_callback: \"my_save\"\n");
      out.write("\t\t\t,display: \"later\"\n");
      out.write("\t\t\t,replace_tab_by_spaces: 4\n");
      out.write("\t\t\t,min_height: 350\n");
      out.write("\t\t});\n");
      out.write("\n");
      out.write("\t\t// callback functions\n");
      out.write("\t\tfunction my_save(id, content){\n");
      out.write("\t\t\talert(\"Here is the content of the EditArea '\"+ id +\"' as received by the save callback function:\\n\"+content);\n");
      out.write("\t\t}\n");
      out.write("\n");
      out.write("\t\tfunction my_load(id){\n");
      out.write("\t\t\teditAreaLoader.setValue(id, \"The content is loaded from the load_callback function into EditArea\");\n");
      out.write("\t\t}\n");
      out.write("\n");
      out.write("\t\tfunction test_setSelectionRange(id){\n");
      out.write("\t\t\teditAreaLoader.setSelectionRange(id, 100, 150);\n");
      out.write("\t\t}\n");
      out.write("\n");
      out.write("\t\tfunction test_getSelectionRange(id){\n");
      out.write("\t\t\tvar sel =editAreaLoader.getSelectionRange(id);\n");
      out.write("\t\t\talert(\"start: \"+sel[\"start\"]+\"\\nend: \"+sel[\"end\"]);\n");
      out.write("\t\t}\n");
      out.write("\n");
      out.write("\t\tfunction test_setSelectedText(id){\n");
      out.write("\t\t\ttext= \"[REPLACED SELECTION]\";\n");
      out.write("\t\t\teditAreaLoader.setSelectedText(id, text);\n");
      out.write("\t\t}\n");
      out.write("\n");
      out.write("\t\tfunction test_getSelectedText(id){\n");
      out.write("\t\t\talert(editAreaLoader.getSelectedText(id));\n");
      out.write("\t\t}\n");
      out.write("\n");
      out.write("\t\tfunction editAreaLoaded(id){\n");
      out.write("\t\t\tif(id==\"example_2\")\n");
      out.write("\t\t\t{\n");
      out.write("\t\t\t\topen_file1();\n");
      out.write("\n");
      out.write("\t\t\t}\n");
      out.write("\t\t}\n");
      out.write("\n");
      out.write("\t\tfunction open_file1()\n");
      out.write("\t\t{\n");
      out.write("\t\t\tvar new_file= {id: \"to\\\\ é # € to\", text: \"//write your code here\", syntax: 'cpp', title: 'new file'};\n");
      out.write("\t\t\teditAreaLoader.openFile('example_2', new_file);\n");
      out.write("\t\t}\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\tfunction close_file1()\n");
      out.write("\t\t{\n");
      out.write("\t\t\teditAreaLoader.closeFile('example_2', \"to\\\\ é # € to\");\n");
      out.write("\t\t}\n");
      out.write("\n");
      out.write("\t\tfunction toogle_editable(id)\n");
      out.write("\t\t{\n");
      out.write("\t\t\teditAreaLoader.execCommand(id, 'set_editable', !editAreaLoader.execCommand(id, 'is_editable'));\n");
      out.write("\t\t}\n");
      out.write("\n");
      out.write("\t</script>\n");
      out.write("\n");
      out.write("\n");
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
      out.write("\n");
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
      out.write("<div class=\"container\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("\n");
      out.write("        <div class=\"span2\">\n");
      out.write("            <a href=\"profile.jsp\" alt=\"profile\">Back to Profile</a>\n");
      out.write("        </div>\n");
      out.write("<div class=\"span10\">\n");
      out.write("\n");
      out.write("      ");
      if (_jspx_meth_c_005fif_005f0(_jspx_page_context))
        return;
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
      out.write("</div></div>\n");
      out.write("</div>\n");
      out.write("  ");
      out.write("\n");
      out.write("<div class=\"footer\">       \n");
      out.write("<div class=\"navbar navbar-fixed-bottom\" style=\" margin-bottom: 0px\">\n");
      out.write("                      <div class=\"navbar-inner\" style=\"background:#535353; border-bottom:0px;\">\n");
      out.write("           <center style=\"color:white\"><a href=\"#myModal3\"  data-toggle=\"modal\" ><b>Contact Us</b></a> || <a href=\"#myModal\" data-toggle=\"modal\"><b>Feedback</b></a></center>\n");
      out.write("            <p style=\"color: white; text-align: center; margin-left: 100px \" align=\"center\">Copyright &copy; 2013 CodeShare, All rights reserved Disclaimer\n");
      out.write("            <img style=\"float: right;\" src=\"http://www.e-zeeinternet.com/count.php?page=1022996&style=odometer&nbdigits=9&reloads=1\" alt=\"Hit Counter\" border=\"0\" ><br/><a href=\"http://www.codeshare.in/\" title=\"Hit Counter\" target=\"_blank\" style=\"font-family: Geneva, Arial, Helvetica, sans-serif; font-size: 10px; color: #000000; text-decoration: none;\">\n");
      out.write("           </a>\n");
      out.write("            </p>\n");
      out.write("            \n");
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
    // /addproblem.jsp(216,6) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_c_005fif_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${not empty param[\"Success\"]}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null, false)).booleanValue());
    int _jspx_eval_c_005fif_005f0 = _jspx_th_c_005fif_005f0.doStartTag();
    if (_jspx_eval_c_005fif_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write(" <p style=\"color:green;font-weight:bold;\">Problem Added successfully.</p>\n");
        out.write("\n");
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
}
