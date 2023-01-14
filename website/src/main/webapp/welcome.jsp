<%-- 
    Document   : welcome
    Created on : 08-Jan-2023, 11:33:49 pm
    Author     : raghav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="WEB-INF/jspf/Header.jspf" %>
        <ul class="nav-bar">
            <li class="nav-item"><a href="userprofile.jsp">My Profile</a></li>
           <li class="nav-item"><a href="#">About Us</a></li>
           <li class="nav-item"><a href="home.jsp">Logout</a></li>
            
        </ul>
    </nav>
    
    <div class="login">
        
    
        <h1>Hello ${pageContext.session.getAttribute("first_name")}</h1>
<!--        <p>I welcome you to this website</p>-->
        ${pageContext.response.setHeader("Cache-Control","no-cache,no-store,must-revalidate")}      
        <c:if test="${sessionScope.email==null}">
            ${pageContext.response.sendRedirect("login.jsp")}
        </c:if>
<!--        <form class="login" action="home.jsp" method="post">
            <button>logout</button>
        </form>-->
    </div>
     <%@include file="WEB-INF/jspf/Footer.jspf" %>
