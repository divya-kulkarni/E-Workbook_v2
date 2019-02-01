<%@ page import="Admin.*" %>
<%@ page import="java.time.LocalDate" %>

<%
    String mid = request.getParameter("mid");
    String uname = request.getParameter("uname");
    String pwd = request.getParameter("password");
    String rno = request.getParameter("rollNo");
    String name = request.getParameter("name");
    //jav.sql.Date bd =java.sql.Date.valueOf(new LocalDate.parse(request.getParameter("bdate")));
    String d=request.getParameter("birthDate");
    out.println();
    //LocalDate bd=LocalDate.parse(d);
    
    String ph = request.getParameter("phoneNo");
    String bid = request.getParameter("batchID");
    String cid = request.getParameter("classID");
    String role=request.getParameter("param");

    //if(!cm.createMember(mid,uname,pwd,rno,name,bd,ph,bid,cid,role))
    {
     		out.println("<script type=\"text/javascript\">");
   			out.println("alert('Yikes!!');");
   			out.println("location='createAcc.html';");
   			out.println("</script>");
   	}
  // 	else
   	{
     		out.println("<script type=\"text/javascript\">");
   			out.println("alert('Yaya!!');");
   			out.println("location='createAcc.html';");
   			out.println("</script>");
   	}
   	
    
    	
%>
