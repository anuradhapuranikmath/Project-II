<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forum</title>
<script src= "http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>

</head>
<body>

<div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                <ul class="nav navbar-nav">
                    
                    <li>
                        <a href="home" data-toggle="tooltip" data-placement="left" title="GO TO HOME!"><span class="glyphicon glyphicon-home"></span></a>
                    </li>
                </ul>
</div>

<c:url var="addAction" value="/forum/add"></c:url>


<div class="row">
          <div class="col-md-12">
            <h1 style="color:purple">Post in Below Forum</h1>
          </div>
        </div>

<div class="well">
	
			   <form:form role="form" commandName="forum" action="${addAction}">
               <form:errors path="category" cssClass="error"/><br/>
               <form:errors path="title" cssClass="error"/><br/>
               <form:errors path="content" cssClass="error"/><br/>
			   
			   <div class="form-group">
                  <label class="control-label">Category</label>
                  <form:input class="form-control" placeholder="Enter Category" type="text" path="category"/>
                </div>
			   
                <div class="form-group">
                  <label class="control-label">Title</label>
                  <form:input class="form-control" placeholder="Enter Title" type="text" path="title"/>
                </div>
               
                <div class="form-group">
                  <label class="control-label">Content
                  </label>
                  <form:textarea class="form-control" placeholder="Enter Content" rows="10" path="content"></form:textarea>
                </div>
               
                <button type="submit" class="btn btn-default">Post in Forum</button>
                
                <input type="hidden"  name="${_csrf.parameterName}"   value="${_csrf.token}"/>
                
              </form:form>
            </div>
            
            
<div  ng-app="repeatSample" class="section">
	<div class="container">
	




		<!-- Angular script -->
	

		<script>
			var f = ${forums};
			angular.module('repeatSample', []).controller('repeatController',
					function($scope) {
						$scope.forums = f;
						$scope.sort = function(keyname) {
							$scope.sortKey = keyname; 
							$scope.reverse = !$scope.reverse; 
						}
					});
		</script>


		


		<div class="bs-component" ng-controller="repeatController">

			<form class="form-inline">
				<div class="form-group">
					<label>Search</label> <input type="text" ng-model="search"
						class="form-control" placeholder="Search">
				</div>
			</form>


	


			<table class="table table-striped table-hover">
				<thead>
					<tr>

						
						<th ng-click="sort('category')">Category <span
							class="glyphicon sort-icon" ng-show="sortKey=='name'"
							ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						
						<th ng-click="sort('title')">Title <span
							class="glyphicon sort-icon" ng-show="sortKey=='name'"
							ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						<th ng-click="sort('content')">Content <span
							class="glyphicon sort-icon" ng-show="sortKey=='price'"
							ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						<th ng-click="sort('user')">User <span
							class="glyphicon sort-icon" ng-show="sortKey=='category'"
							ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						<th ng-click="sort('date')">Date <span
							class="glyphicon sort-icon" ng-show="sortKey=='category'"
							ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						

					</tr>
				</thead>
				<tbody>
					

					<tr
						ng-repeat="forum in forums|orderBy:sortKey:reverse|filter:search">
						<td>{{forum.category}}</td>
						<td>{{forum.title}}</td>
						<td>{{forum.content}}</td>
						<td>{{forum.date}}</td>
						<td>{{forum.user}}</td>

					</tr>
				</tbody>
			</table>

		</div>
	</div>
</div>

</body>
</html>