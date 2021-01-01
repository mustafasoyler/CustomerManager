<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 1.01.2021
  Time: 15:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
    <title>NEW CUSTOMER</title>
</head>
<body>
    <div align="center">
        <h2>Yeni Müşteriler</h2>

        <form:form action="save" method="post" modelAttribute="customer" >
            <table border="0" cellpadding="5">
                <tr>
                    <td>AD:</td>
                    <td><form:input path="name"/></td>
                </tr>
                <tr>
                    <td>E-MAIL:</td>
                    <td><form:input path="email"/></td>
                </tr>
                <tr>
                    <td>ADRES:</td>
                    <td><form:input path="address"/></td>
                </tr>
                <tr>
                   <td colspan="2"><input type="submit" value="Kaydet"></td>
                </tr>
            </table>
        </form:form>
    </div>
</body>
</html>
