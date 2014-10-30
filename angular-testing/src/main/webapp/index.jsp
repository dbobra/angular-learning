<html>
<head>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
</head>
<body>
	<h2>Welcome to anguralJS !!!</h2>

	<div ng-app="" ng-controller="personController">
	 <form ng-submit="add()">
	    Name : <input type="text" ng-model="name" placeholder="Enter your name" /> <br>
		City : <input type="text" ng-model="city" placeholder="Enter your City" /> <br>
		<h5>Hello {{ name }}</h5>
		<!-- <h1 ng-bind="person.city"></h1> -->
		<p>Your City <span ng-bind="city"></span></p>
       <input type ="submit" value="ADD">
    </form>
    <li ng-repeat = "list of list">
    <span>{{ city.text }}</span>
	</li>
	</div>
	
	<script>
 function personController($scope) {
	 
	 $scope.list = [{text : 'darshan'}];
	 
	 
    $scope.add = function () {
    	$scope.list.push({text:$scope.city});
    	$scope.city='';
    };
} 
</script>
</body>
</html>
