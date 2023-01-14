<%@include file="WEB-INF/jspf/Header.jspf" %>

 
        
<ul class="nav-bar">
            <li class="nav-item"><a href="home.jsp">Home</a></li>
           <li class="nav-item"><a href="#">About Us</a></li>
           <li class="nav-item"><a href="login.jsp">Login</a></li>
           <li class="nav-item"><a href="signup.jsp">Signup</a></li>
            
        </ul>
    </nav>
    
    <div class="login">
        <a class="btn" id="size" href="login.jsp"><button type="button" class="btn">Log in</button></a>
    </div>
 
    ${pageContext.session.removeAttribute("first_name")}
    ${pageContext.session.removeAttribute("last_name")}
    ${pageContext.session.removeAttribute("email")}
    ${pageContext.session.removeAttribute("registertime")}
    ${pageContext.session.invalidate()}
    
 <%@include file="WEB-INF/jspf/Footer.jspf" %>