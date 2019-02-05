<%@ page import="onLoad.*" %>

<%
	int rn=Integer.parseInt(request.getParameter("param"));
	String re=request.getParameter("param2");
	String an=(String)session.getAttribute("an");
	if(giveRemark.given(rn,an,re))
	{
     		out.println("<script type=\"text/javascript\">");
   			out.println("alert('Remark Given');");
   			out.println("location='index.jsp';");
   			out.println("</script>");
   			
   	}
   	else
   	{
   			out.println("<script type=\"text/javascript\">");
   			out.println("alert('Yikesss');");
   			out.println("location='index.jsp';");
   			out.println("</script>");
   	}
   	response.sendRedirect("remarks1.jsp");
	//out.println(re);
%>
