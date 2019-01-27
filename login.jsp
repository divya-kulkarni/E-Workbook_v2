<%@ page import="Login.*"%>
<% String u=request.getParameter("user");
	String p=request.getParameter("pass");
	out.println("I am here");
	String s=login.loginValidation(u,p);
	out.println(s);
	if("ERROR".equals(s))
		out.println("ERRPR");
	else
	{
		String memberID=getMemberID.getMemberId(u);
		session.setAttribute("memberID",memberID);
		
		if(login.rolecmp("Student",s)==1)
		{
			String redirectURL = "http://localhost:8080/Project/Student/index.jsp";
			response.sendRedirect(redirectURL);
			
		}	
		else if(login.rolecmp("Student",s)==1)
		{
			String redirectURL = "http://localhost:8080/Project/Student/index.jsp";
			response.sendRedirect(redirectURL);
			
		}
		else if(login.rolecmp("Teacher",s)==3)
		{
			String redirectURL = "http://localhost:8080/Project/Student/index.jsp";
			response.sendRedirect(redirectURL);
			
		}
		
	}
%>
