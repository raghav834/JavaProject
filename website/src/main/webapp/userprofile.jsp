<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@include file="WEB-INF/jspf/Header.jspf" %>
        <ul class="nav-bar">
            <li class="nav-item"><a href="welcome.jsp">Welcome</a></li>
           <li class="nav-item"><a href="#">About Us</a></li>
           <li class="nav-item"><a href="home.jsp">Logout</a></li>
            
        </ul>
    </nav>
           <div class="login">  <form action="signup.jsp"  method="post">
      <h1>Your Profile</h1>
      <div class="form-group">
          <p class="display">First Name </p> <input
          class="form-control"
          type="text"
          name="first"
          placeholder="${sessionScope.first_name}"
          minlength="5"
          maxlength="255"
          readonly
          
        />
      </div>
      <div class="form-group">
          <p>Last Name</p> <input
          class="form-control"
          type="text"
          placeholder="${sessionScope.last_name}"
          
           readonly
        />
      </div>
      <div class="form-group">
          <p>Registered Email</p> <input
          class="form-control"
          type="text"
          placeholder="${sessionScope.email}"
           readonly
          
        />
      </div>
      <div class="form-group">
          <p>Time and Date Of Registeration</p> <input
          class="form-control"
          type="text"
         placeholder="${sessionScope.registertime}"
          readonly
         />
      </div>
       </form>
        </div>
           ${pageContext.response.setHeader("Cache-Control","no-cache,no-store,must-revalidate")}      
        <c:if test="${sessionScope.email==null}">
            ${pageContext.response.sendRedirect("login.jsp")}
        </c:if>
     <%@include file="WEB-INF/jspf/Footer.jspf" %>
