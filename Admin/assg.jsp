<%@ page import="Admin.*" %>
<%
    String divisionId = request.getParameter("assgID");
    String divisionName = request.getParameter("assgName");
    String tid = request.getParameter("topicID");
    String ques = request.getParameter("question");

    if(!Create.assignment(divisionId,divisionName,tid,ques))
    {
     		out.println("<script type=\"text/javascript\">");
   			out.println("alert('Yikes!!');");
   			out.println("location='sta.html';");
   			out.println("</script>");
   	}
   	else
   	{
     		out.println("<script type=\"text/javascript\">");
   			out.println("alert('Yaya!!');");
   			out.println("location='sta.html';");
   			out.println("</script>");
   	}
   	
    
    	
%>
