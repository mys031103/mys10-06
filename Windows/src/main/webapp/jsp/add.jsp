<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="doAdd">
    <table border="1px">
        <tr>
            <td colspan="3" align="center">新增固定资产</td>
        </tr>
        <tr>
            <td>
                资产编号
            </td>
            <td>
                <input type="text" name="assetid">
            </td>
        </tr>
        <tr>
            <td>
                资产名称
            </td>
            <td>
                <input type="text" name="assetname">
            </td>
        </tr>
        <tr>
            <td>
                资产类型
            </td>
            <td>
                <select name="assettype">
                    <option value="请选择类型">请选择类型</option>
                    <option value="电子设备">电子设备</option>
                    <option value="运输设备">运输设备</option>
                    <option value="机械设备">机械设备</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>
                入库时间
            </td>
            <td>
                <input type="text" name="intodate">
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <input type="submit" value="提交">
                <input type="reset">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
