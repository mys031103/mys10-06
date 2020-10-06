<%--
  Created by IntelliJ IDEA.
  User: LHX
  Date: 2020/10/5
  Time: 10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/" method="post">
    <p align="center">
        资产编号：<input type="text" name="assetid" >资产类型：
        <select name="assettype">
            <option value="请选择类型">请选择类型</option>
            <option value="电子设备">电子设备</option>
            <option value="运输设备">运输设备</option>
            <option value="机械设备">机械设备</option>
        </select>
        <input type="submit" value="查询">
    </p>
</form>
<table border="1px" align="center">
    <tr id="title">
        <td colspan="4" align="center">固定资产查询</td>
    </tr>
    <tr id="shang">
        <td>资产编号</td>
        <td>资产名称</td>
        <td>资产类型</td>
        <td>入库日期</td>
    </tr>
    <c:forEach items="${list}" var="list">
        <tr>
            <td>${ list.assetid }</td>
            <td>${ list.assetname }</td>
            <td>${ list.assettype }</td>
            <td><fmt:formatDate value="${list.intodate}"></fmt:formatDate></td>
        </tr>
    </c:forEach>
</table>
<a href="/toAdd"  style="padding-left:950px" >新增固定资产</a>
</body>
</html>
