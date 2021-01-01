<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 1.01.2021
  Time: 12:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>CustomerManager</title>
</head>
<body>
<div align="center">
    <h1>Müşteri Yönetimi</h1>
    <form method="get" action="search">
        <input type="text" name="keyword">
        <input type="submit" value="Aramalar">
    </form>
    <h3><a href="new">YENI MUSTERILER</a> </h3>
    <table border="1" cellpadding="5" >
        <tr>
            <th>NUMARA</th>
            <th>AD</th>
            <th>EMAIL</th>
            <th>ADRES</th>
            <th>HAREKETLER</th>
        </tr>

        <c:forEach items="${listCustomer}" var="customer">
            <tr>
                <td>${customer.id}</td>
                <td>${customer.name}</td>
                <td>${customer.email}</td>
                <td>${customer.address}</td>
                <td>
                    <a href="edit?id=${customer.id}">Düzenle</a>
                        &nbsp;&nbsp;&nbsp;
                    <a href="delete?id=${customer.id}">Sil</a>

                </td>

            </tr>
        </c:forEach>

    </table>

</div>
</body>
</html>
