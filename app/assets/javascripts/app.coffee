app = angular.module('app',[
	'templates',
	'ngRoute',
	'controllers',
	'door3.css'
])

app.config([ '$routeProvider',
	($routeProvider)->
		$routeProvider
			.when('/',
				templateUrl: "home/index.html",
				css: 'assets/templates/home/landing.css'
			)
			.when('/sing_up',
				templateUrl: "users/new.html"
				controller: 'singUpController'
			)
			.when('/login',
				templateUrl: "login.html"
			)
])

controllers = angular.module('controllers',[])
controllers
	.controller("singUpController", 
		['$scope', '$routeParams', '$location',
		($scope,$routeParams,$location) ->
			#$scope.choose = (user) -> $location.path("/").search('user',user)
			$scope.choose = (user) -> console.log(user)
			#$scope.user= "Alex"
			$scope.user = {}
			$scope.user.types = [
				'Seleccionar'
				'banda',
				'lugar',
				'usuario'
			]
			$scope.user.role =  $scope.user.types[0]
	])

