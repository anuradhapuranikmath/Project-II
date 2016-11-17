<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@include file="header.jsp"%>
    <%@page import="com.collab.model.User" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                <ul class="nav navbar-nav">
                    
                    <li>
                        <a href="home" data-toggle="tooltip" data-placement="left" title="GO TO HOME!"><span class="glyphicon glyphicon-home"></span></a>
                    </li>
                </ul>
</div>

<br><br><br><br><br><br><br>

	<%User user=(User)request.getAttribute("user"); %>

<div class="section" >
      <div class="container" align="center">
        <div class="row" align="center">
          <div class="col-md-3">
           <div class="span3">
		<img src="<c:url value="/resources/img/${user.userId}.jpg" /> " alt="image" class="center-block img-square img-responsive"/>
	</div>
	</div>

<!-- 		<div> -->
<%--             <h3 class="text-center"><%=user.getUsername()%></h3> --%>
<%--             <p class="text-center"><%=user.getAdress()%></p> --%>
          
<!--           <div class="col-md-8"> -->
			<div class="col-md-5">
          <div class="span3">
            <ul class="list-group">
              <li style="font-size: 20px; color:purple;" class="list-group-item">USER: <%=user.getUsername()%></li>
               <li style="font-size: 20px; color:purple;" class="list-group-item">Email: <%=user.getEmail()%></li>
                <li style="font-size: 20px; color:purple;" class="list-group-item">ADRESS: <%=user.getAdress()%></li>
            </ul>
          </div>
        
      </div>
    </div>
    </div>
    </div>
</body>
</html>