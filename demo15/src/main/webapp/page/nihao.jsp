<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 引入jstl核心标签库 -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<c:set var="contextpath" value="${pageContext.request.contextPath}" />
<html>
  <head>
    
    <title>首页</title>
<%--	<meta http-equiv="pragma" content="no-branch">
	<meta http-equiv="branch-control" content="no-branch">
	<meta http-equiv="expires" content="0">  --%>
  </head>
  
  <body>

  ${para}
<br>
  <a href="${pageContext.request.contextPath}/report">返回</a>



  </body>
</html>









