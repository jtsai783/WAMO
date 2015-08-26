angular.module 'WAMO'
.directive 'menu', ->
	restrict: 'E'
	transclude: true
	templateUrl: '/assets/views/menu.html'
	controller: 'menuController'
	scope:
		icon: '@'
		visibility: '='
	link: (scope, element, attrs) ->
		console.log("linked")
		scope.toggleMenu = ->
			console.log(scope)