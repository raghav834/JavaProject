
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@include file="WEB-INF/jspf/Header.jspf" %>

  
    <body>
        <ul class="nav-bar">
            <li class="nav-item"><a href="home.jsp">Home</a></li>
           <li class="nav-item"><a href="#">About Us</a></li>
           <li class="nav-item"><a href="login.jsp">Login</a></li>
           <li class="nav-item"><a href="signup.jsp">Signup</a></li>
            
        </ul>
    </nav>
    
    
    <div class="login">  <form action="signup.jsp"  method="post">
      <h1>Register Here......</h1>
      <div class="form-group">
        <input
          class="form-control"
          type="text"
          name="first"
          placeholder="First_Name"
          minlength="5"
          maxlength="255"
           autofocus
          
        />
      </div>
      <div class="form-group">
        <input
          class="form-control"
          type="text"
          name="last"
          placeholder="Last_Name"
          minlength="5"
          maxlength="255"
          
        />
      </div>
      <div class="form-group">
        <input
          class="form-control"
          type="email"
          name="email"
          placeholder="Email address"
          minlength="5"
          maxlength="255"
          
        />
      </div>
      <div class="form-group">
        <input
          class="form-control"
          type="password"
          name="password"
          placeholder="Password"
          maxlength="255"
        />
      </div>
      <div class="form-group">
        <input
          class="form-control"
          type="password"
          placeholder="Confirm Password"
          
          maxlength="255"
         
        />
      </div>
      
      <button class="btn" type="submit">Sign Up</button>
     
    </form>
        </div>

         <sql:setDataSource driver="com.mysql.jdbc.Driver" var="db" url="jdbc:mysql://localhost:3306/data" user="root" password="root" />
         <c:choose>
             <c:when test="${not empty param.first
                                   && not empty param.last
                                   && not empty param.email
                                   && not empty param.password
                                   }">    
         <sql:update dataSource="${db}" var="newCitizen">
            INSERT INTO userdata
                           (first_name, last_name, email, password,Registeredtime) VALUES (?, ?, ?, ?,now())
            <sql:param value="${param.first}" />
            <sql:param value="${param.last}" />
            <sql:param value="${fn:toLowerCase(param.email)}" />
            <sql:param value="${param.password}" />
        </sql:update>
                           <c:redirect url="home.jsp"></c:redirect>
            
             </c:when>
         </c:choose>

    
    <%@include file="WEB-INF/jspf/Footer.jspf" %>