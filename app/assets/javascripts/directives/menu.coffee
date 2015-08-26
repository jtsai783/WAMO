angular.module 'WAMO'
.directive 'menu', ->
	restrict: 'E'
	transclude: true
	templateUrl: '/assets/views/menu.html'
	controller: 'menuController'
	controllerAs: 'menuCtrl'
	scope:
		icon: '@'
		visibility: '='
	link: (scope, element, attrs) ->
		$('.menu-icon').bind("transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd", -> 
			$('.icon-arrow').removeClass('test-class')
			$('.icon-arrow').addClass('test-class-2')
			console.log 'test-class removed'
		)
		scope.toggleMenu = ->
			if scope.menuCtrl.visibility == true
				scope.menuCtrl.visibility = false
			else
				scope.menuCtrl.visibility = true