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
				css: ['assets/templates/home/style.css','assets/templates/home/normalize.css','assets/templates/home/foundation.css','assets/templates/home/landing.css' ]
			)
			.when('/signup',
				templateUrl: "signup/signup.html",
				css: ['assets/templates/home/signup.css','assets/templates/home/style.css' ,'assets/templates/home/normalize.css','assets/templates/home/foundation.css']
			)
			.when('/login',
				templateUrl: "login/login.html",
				css: ['assets/templates/login/login.css','assets/templates/home/style.css','assets/templates/home/normalize.css','assets/templates/home/foundation.css' ]
			)
			.when('/profile',
				templateUrl: "profiles/profile.html",
				css: ['assets/templates/profiles/profile.css', 'assets/templates/profiles/bar.css','assets/templates/profiles/bar-style.css']
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

