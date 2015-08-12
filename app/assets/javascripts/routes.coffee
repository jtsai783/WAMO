angular.module 'WAMO', ['ngRoute']
.config ($routeProvider)->
	$routeProvider.when '/ryu',
		template: 'HELLOW WORLD'