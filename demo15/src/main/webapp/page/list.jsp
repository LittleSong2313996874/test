<%@ page language="java" pageEncoding="UTF-8"%>
<%--引入JSTL核心标签库 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
  <title>显示用户信息</title>
  <style type="text/css">
    table,td{
      border: 1px solid;
      border-collapse: collapse;
    }
  </style>
</head>
<body>
<br/>
<c:set var="contextpath" value="${pageContext.request.contextPath}" />

<table border="2" align="center">
  <tr>
    <td>接口</td>
    <td>方法名</td>
    <td>描述</td>
  </tr>
  <%--遍历lstUsers集合中的User对象 --%>
  <c:forEach var="item" items="${list}">
    <tr>
      <td>${item.interfereName}</td>
      <td>${item.requestMethod}</td>
      <td>
        <textarea cols="20" rows="4">${item.description}</textarea></td>
      <td>


        <form action="${contextpath}/delete/${item.id}" method="post">
          <input type="hidden" name="_method" value="DELETE" />
            <%--把id设为隐藏域，只有name的值和controller对于方法的形参一致，会自动赋值进去
            <input type="hidden" name="id" value="${user.id}"/>--%>
          <input type="submit" value="删除"/>
        </form>
      </td>
    </tr>
  </c:forEach>
</table>

</body>
</html>