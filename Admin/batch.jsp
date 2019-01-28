<%
    String batchId = request.getParameter("batchID");
    String batchName = request.getParameter("batchName");
     String batchNo = request.getParameter("batchNo");
    String classID = request.getParameter("classID");
    String divisionID = request.getParameter("divisionID");
    CDB.createClass(batchId,batchName,batchNo,classID,divisionID);
%>