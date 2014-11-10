<html ng-app="personDetail">
<head>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js">
</script>
<script>

var personDetail = angular.module("personDetail",[]);
personDetail.controller('personController',function($scope){
	$scope.namelists=[];
	$scope.citylists=[];
	
	$scope.add = function(){
		$scope.namelists.push($scope.name);
		$scope.citylists.push($scope.city);
		$scope.name='';
		$scope.city='';
	};
});

</script>
</head>
<body ng-controller="personController">
	<h2>Welcome to anguralJS !!!</h2>

	<div>
	<ul> Name
	<li ng-repeat="name in namelists">{{ name }}</li>
	</ul>
	<ul>City
	<li ng-repeat="city in citylists">{{ city }} </li>
	</ul>
		<form ng-submit="add()">
			Name : <input type="text" ng-model="name"
				placeholder="Enter your name" /> <br> City : <input
				type="text" ng-model="city" placeholder="Enter your City" /> <br>
			<!-- <h5>Hello {{ name }}</h5> -->
			<!-- <h1 ng-bind="person.city"></h1> -->
			<!-- <p>Your City <span ng-bind="city"></span></p> -->
			<input type="submit" value="ADD">
		</form>
	</div>

	<script>

</script>
</body>
</html>
