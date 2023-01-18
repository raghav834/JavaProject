<%-- 
    Document   : allprofiles
    Created on : 18-Jan-2023, 10:00:33 am
    Author     : raghav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="Css/table.css"/>
    </head>
    <body>
        <h1>Full Database</h1>
        <sql:setDataSource driver="com.mysql.jdbc.Driver" var="db" url="jdbc:mysql://localhost:3306/data" user="root" password="root" />
<sql:query var="rs" dataSource="${db}">select * from userdata</sql:query>
 
<table>
         <tr>
             <th>Sr Number</th>
             <th>First Name</th>
             <th>last Name</th>
             <th>Email</th>
             <th>Password</th>
             <th>Registered Time</th>
         </tr> 
<c:forEach items="${rs.rows}" var="row">
    <tr>
            <td><c:out value="${row.sr_no}"></c:out></td>
             <td><c:out value="${row.first_name}"></c:out></td>
             <td><c:out value="${row.last_name}"></c:out></td>
             <td><c:out value="${row.email}"></c:out></td>
             <td><c:out value="${row.password}"></c:out></td>
             <td><c:out value="${row.Registeredtime}"></c:out></td>
         </tr>
</c:forEach>
     </table>
 
    </body>
</html>
