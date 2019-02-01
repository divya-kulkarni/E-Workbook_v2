<%@ page import="Admin.*" %>
<%
    String divisionId = request.getParameter("classID");
    String divisionName = request.getParameter("subjectID");

    if(!Create.linkClassSubject(divisionId,divisionName))
    {
     		out.println("<script type=\"text/javascript\">");
   			out.println("alert('Yikes!!');");
   			out.println("location='index.jsp';");
   			out.println("</script>");
   	}
   	else
   	{
     		out.println("<script type=\"text/javascript\">");
   			out.println("alert('Yaya!!');");
   			out.println("location='index.jsp';");
   			out.println("</script>");
   	}
   	
    
    	
%>
