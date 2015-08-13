angular.module 'WAMO', ['ui.router']
.config ($stateProvider, $urlRouterProvider)->
	$urlRouterProvider.otherwise '/'
	$stateProvider
	.state 'char',
		url: '/:char'
		views: 
			'header':
				templateUrl: '/assets/views/movelist.html'
				controller: 'moveListController'
			'followup':
				template: 'HELLO YOU'
