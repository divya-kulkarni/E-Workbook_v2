<%
    String classId = request.getParameter("classID");
    String className = request.getParameter("className");

    CDB.createClass(classId,className);
%>