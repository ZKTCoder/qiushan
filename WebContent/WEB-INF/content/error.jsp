<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<s:if test="hasFieldErrors()">   
   		<script language="JavaScript">   
	   		var msg = '';    
			<s:iterator value="fieldErrors">     
		    	<s:iterator value="value">     
		            msg=msg+'<s:property escape='false'/>'+'\n';   
		    	</s:iterator>       
			</s:iterator>   
			alert(msg);   
		</script>       
	</s:if> 
	<s:actionerror/> 
	<s:if test="null!=#session.login">
		<%
			response.sendRedirect("forward.action?name=login");
		%>
	</s:if>
</body>
</html>