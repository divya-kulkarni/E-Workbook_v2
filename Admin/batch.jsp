<%@ page import="Admin.*" %>
<%
	out.println("Hello buitch");
    String batchId = request.getParameter("batchID");
   String batchNo = request.getParameter("batchNo");
    String classID = request.getParameter("classID");
    String divisionID = request.getParameter("divisionID");
    String sr=request.getParameter("sRoll");
    String er=request.getParameter("eRoll");
    CreateBatch.createBatch(batchId,batchNo,classID,divisionID,sr,er);
    out.println("<script type=\"text/javascript\">");
   			out.println("alert('Batch created!!');");
   			out.println("location='index.jsp';");
   			out.println("</script>");
    
%>
