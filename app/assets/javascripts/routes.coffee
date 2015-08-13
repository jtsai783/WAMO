angular.module 'WAMO', ['ngRoute']
.config ($routeProvider)->
	$routeProvider.when '/ryu',
		templateUrl: '/assets/views/movelist.html'
		controller: 'moveListController'

angular.module 'WAMO'
.controller 'moveListController', ['$scope', '$http', ($scope, $http) ->
	$http method: 'GET', url: '/api/moves/ryu'
	.success (data) ->
		$scope.moves = data
]

 # ($http) ->
	# 		controller = this;
	# 		$http 
	# 			method: 'GET'
	# 			url: '/api/moves/ryu'
	# 		.success (data) ->
	# 			controller.moves = data
	# 			controller.lol = "lol"
	# 			console.log controller.moves