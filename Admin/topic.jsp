<%@ page import="Admin.*" %>
<%
    String divisionId = request.getParameter("topicID");
    String divisionName = request.getParameter("topicName");
    String subjectID = request.getParameter("subjectID");

    if(!Create.topic(divisionId,divisionName,subjectID))
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
