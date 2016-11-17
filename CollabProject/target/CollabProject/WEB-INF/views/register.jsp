<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header.jsp"%>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<!-- Bootstrap Core CSS -->
    <link href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<c:url value="/resources/vendor/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">

    <!-- Theme CSS -->
    <link href="<c:url value="/resources/css/grayscale.min.css"/>" rel="stylesheet">

</head>
<body>
	<c:url var="addAction" value="/register/add"></c:url>
	
	<section id="services" class="services bg-primary">
      <div class="container">
        <div class="row text-center">
          <div class="col-lg-10 col-lg-offset-1">
            <h2>
              <br>SIGNUP Below</h2>
            <hr class="small">
            <div class="section">
            
              <form:form class="form-horizontal" role="form" commandName="user" action="${addAction}" enctype="multipart/form-data">
                <div class="form-group">
                  <div class="col-sm-2">
                    <label class="control-label">Username</label>
                  </div>
                  <div class="col-sm-10">
                    <form:input type="text" path="username" class="form-control"  />
                  </div>
                  <form:errors path="username" cssClass="error" cssStyle="color: #ff0000;"/>
                </div>
                
                <div class="form-group">
                  <div class="col-sm-2">
                    <label class="control-label">Password</label>
                  </div>
                  <div class="col-sm-10">
                    <form:input type="password" class="form-control"  path="password" />
                  </div>
                  <form:errors path="password" cssClass="error" cssStyle="color: #ff0000;"/>
                </div>
                
                
                <div class="form-group">
                  <div class="col-sm-2">
                    <label class="control-label">Email</label>
                  </div>
                  <div class="col-sm-10">
                    <form:input type="email" class="form-control"  path="email" />
                  </div>
                  <form:errors path="email" cssClass="error" cssStyle="color: #ff0000;"/>
                  
                </div>
                <div class="form-group">
                  <div class="col-sm-2">
                    <label class="control-label">Address</label>
                  </div>
                  <div class="col-sm-10">
                    <form:input type="text" class="form-control"  path="adress" />
                  </div>
                  <form:errors path="adress" cssClass="error" cssStyle="color: #ff0000;"/>
                </div>
                
                <div class="form-group">
                <div class="col-sm-2">
                   
                  </div>
						<div class="col-sm-10">
							<form:input type="file" class="form-control" path="profilePicture" />
						</div>
					</div>
					
                <div class="form-group">
                  <button type="submit" class="btn btn-default">SIGNUP</button>
                </div>
              </form:form>
            </div>
          </div>
        </div>
        <!-- /.col-lg-10 -->
      </div>
      <!-- /.row -->
      <!-- /.container -->
    </section>
</body>
</html>