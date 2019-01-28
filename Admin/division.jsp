<%
    String divisionId = request.getParameter("divisionID");
    String divisionName = request.getParameter("divisionName");

    CDB.createClass(divisionId,divisionName);
%>