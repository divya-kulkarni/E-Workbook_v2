<%@ page import="onLoad.*" %>
<%@ page import="java.lang.String" %>
<%

   String memberID=(String)session.getAttribute("memberID");
   String s[] = getSubjects.getSubjectList(memberID);
   int cnt=0,tcnt=0,acnt=0,j=0,i=0,c=0;
   for(i=0;i<s.length;i++)
   {
   	if(s[i]!=null)
   		cnt++;
   }
	
 	String ass=request.getParameter("param");
 	String topic=(String)session.getAttribute("topic");
 	String assg[]=getTopic.getAssgList(topic);
   for(i=0;i<assg.length;i++)
   {
   	if(assg[i]!=null)
   		acnt++;
   }
   out.println(assg[0]);
%> 


