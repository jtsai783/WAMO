angular.module 'WAMO'
.controller 'moveListController',
['$scope', '$http', '$stateParams'
($scope, $http, $stateParams) ->
	$http method: 'GET', url: "/api/moves/#{$stateParams.char}"
	.success (data) ->
		$scope.moves = data
	console.log 'test'
	$scope.test = (id) ->
		console.log "the move id is #{id}"
]