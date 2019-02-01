<%@ page import="Admin.*" %>
<%
	
	out.println(Disable.disableMember(request.getParameter("mid")));
	if(Disable.disableMember(request.getParameter("mid")))
	{
     		out.println("<script type=\"text/javascript\">");
   			out.println("alert('Account disabled!!');");
   			out.println("location='index.jsp';");
   			out.println("</script>");
   	}
   	else
   	{
   		out.println("<script type=\"text/javascript\">");
   			out.println("alert('Yikesss!!');");
   			out.println("location='index.jsp';");
   			out.println("</script>");
   	}
   		
     		
%>
