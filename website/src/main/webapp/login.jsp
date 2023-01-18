<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@include file="WEB-INF/jspf/Header.jspf" %>
 ${pageContext.response.setHeader("Cache-Control","no-cache,no-store,must-re-validate")}
        <ul class="nav-bar">
            <li class="nav-item"><a href="home.jsp">Home</a></li>
           <li class="nav-item"><a href="#">About Us</a></li>
           <li class="nav-item"><a href="login.jsp">Login</a></li>
           <li class="nav-item"><a href="signup.jsp">Signup</a></li>
            
        </ul>
    </nav>
    
    <div class="body">
        
    </div>
    <div class="login">  <form  action="login.jsp" method="post" >
      <h1>Please Sign in</h1>
      <div class="form-group">
        <input
           name="email"
          class="form-control"
          type="email"
          placeholder="Email address"
          minlength="5"
          maxlength="255"
          autofocus
        />
      </div>
      <div class="form-group">
        <input
            name="password"
            class="form-control"
          type="password"
          placeholder="Password"
          maxlength="255"
        />
      </div>
      <div class="form-group">
        <input type="checkbox" id="remember" />
        <label class="label-inline" for="remember">Remember me</label>
      </div>
      <button class="btn" type="submit">Sign in</button>
      <a href="signup.jsp"><button class="btn" type="button">Register</button></a>
    </form></div>
    
    <c:choose>
        <c:when test="${sessionScope.email==null}">
        <sql:setDataSource driver="com.mysql.jdbc.Driver" var="db" url="jdbc:mysql://localhost:3306/data" user="root" password="root" />
<sql:query var="rs" dataSource="${db}">select * from userdata</sql:query>
 
 <c:forEach items="${rs.rows}" var="row">
         <c:if test="${row.email == param.email && row.password == param.password}">
             <c:set var="email" scope="session" value="${row.email}"></c:set>
             <c:set var="first_name" scope="session" value="${row.first_name}"></c:set>
             <c:set var="last_name" scope="session" value="${row.last_name}"></c:set>
             <c:set var="email" scope="session" value="${row.email}"></c:set>
             <c:set var="registertime" scope="session" value="${row.Registeredtime}"></c:set>
             ${pageContext.response.sendRedirect("welcome.jsp")}
         </c:if>
      
   </c:forEach>
    </c:when>
<c:otherwise>
    <center>${pageContext.out.println("Please Enter Correct Details")}</center>
</c:otherwise>
    
    </c:choose>

 
        
        
        
        
        
        
 <%@include file="WEB-INF/jspf/Footer.jspf" %>