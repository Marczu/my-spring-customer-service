
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>List Customers</title>
</head>
<body>
aaa
<div id="wrapper">
    <div id="header">
        <h2>Customer Relationship Manager</h2>
    </div>
    <div id="container">
        <div id="content">
            <%--TABLE--%>

            <table>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                </tr>

                <%--LOOP AND PRINT CUSTOMERS--%>
                <c:forEach var="tempCustomer" items="${customers}">
                    <tr>
                        <td>${tempCustomer.firstName}</td>
                        <td>${tempCustomer.lastName}</td>
                        <td>${tempCustomer.email}</td>
                    </tr>
                </c:forEach>
            </table>

        </div>
    </div>
</div>

</body>
</html>
