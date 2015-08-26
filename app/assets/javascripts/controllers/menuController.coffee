angular.module 'WAMO'
.controller 'menuController',
['$scope'
 ($scope) ->
 	console.log('menu controller instantiated')
 	$scope.visibility = false
 	return
]