angular.module 'WAMO', ['ui.router']
.config ($stateProvider, $urlRouterProvider)->
	$urlRouterProvider.otherwise '/ryu'
	$stateProvider
	.state 'char',
		url: '/:char'
		views: 
			'movelist':
				templateUrl: '/assets/views/movelist.html'
				controller: 'moveListController'
			'followup':
				templateUrl: '/assets/views/followup.html'
				controller: 'followUpController'
