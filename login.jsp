<%@ page import="Login.*"%>
<% String u=request.getParameter("user");
	String p=request.getParameter("pass");
	out.println("I am here");
	String s=login.loginValidation(u,p);
	if(login.rolecmp("Student",s)==1)
	{
		String memberID=getMemberID.getMemberId(u);
		session.setAttribute("memberID",memberID);
		String redirectURL = "http://localhost:8080/Project/Student/index.jsp";
    		response.sendRedirect(redirectURL);
    	}

	else
	{
		out.println("I am here false ");	
	
	}
%>
