angular.module 'WAMO', ['ngRoute']
.config ($routeProvider)->
	$routeProvider.when '/ryu',
		templateUrl: 'movelist.html'