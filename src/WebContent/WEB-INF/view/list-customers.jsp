
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>List Customers</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>

<div id="wrapper">
    <div id="header">
        <h2>Customer Relationship Manager</h2>
    </div>
    <div id="container">
        <div id="content">

            <%--BUTTON DO ADDING NEW CUSTOMER--%>
            <input type="button" value="Add Customer"
            onclick="window.location.href='showFormForAdd'; return false;"
            class="add-button"
            />

            <%--TABLE--%>
            <table>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Action</th>
                </tr>

                <%--LOOP AND PRINT CUSTOMERS--%>
                <c:forEach var="tempCustomer" items="${customers}">

                    <%--UPDATE LINK--%>
                    <c:url var="updateLink" value="/customer/showFormForUpdate">
                        <c:param name="customerId" value="${tempCustomer.id}"/>
                    </c:url>

                    <%--DELETE LINK--%>
                    <c:url var="deteleLink" value="/customer/delete">
                        <c:param name="customerId" value="${tempCustomer.id}"/>
                    </c:url>

                    <tr>
                        <td>${tempCustomer.firstName}</td>
                        <td>${tempCustomer.lastName}</td>
                        <td>${tempCustomer.email}</td>

                        <td>
                            <a href="${updateLink}">Update</a>
                            |
                            <a href="${deteleLink}" onclick="if(!(confirm('Are you sure you want to delete Customer?'))) return false">Delete</a>

                        </td>
                    </tr>
                </c:forEach>
            </table>

        </div>
    </div>
</div>

</body>
</html>
