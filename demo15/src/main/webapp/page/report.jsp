<%@ page language="java" pageEncoding="UTF-8"%>
<!-- 支持EL表达式 -->
<%@ page isELIgnored="false" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<body>

<form action="${pageContext.request.contextPath}/bug" method="post">
  <table border="2" align="center" width="500" height="500">
    <caption><h2>提交你的问题</h2></caption>
    <tr>
      <th>接口</th>
      <td><input type="text" name="interfereName" placeholder="接口url或名称"/></td>
    </tr>
    <tr>
      <th>请求方法</th>
      <td><input type="text" name="requestMethod" placeholder="get/post 非必填" /></td>
    </tr>
    <tr>


      <td colspan="2"> <div align="center"><h4>问题描述</h4> <textarea name="description" cols="50" rows="20" placeholder="发生了什么问题，你希望如何解决" ></textarea>
      </div>
      </td>
    </tr>


    <tr>
      <td colspan="2" align="center">
        <input type="submit" value="提交" style="width:111px"/>
      </td>
    </tr>

  </table>
</form>

<hr/>


</body>
</html>