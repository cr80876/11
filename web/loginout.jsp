<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2020/12/9
  Time: 11:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //销毁session对象
    session.invalidate();

    //跳转页面：首页
    response.sendRedirect("index.jsp");
%>
