angular.module 'WAMO'
.directive 'menu', ->
	restrict: 'E'
	transclude: true
	templateUrl: '/assets/views/menu.html'
	controller: 'menuController'
	controllerAs: 'menuCtrl'
	bindToController: true
	scope:
		iconOpen: '@iconOpen'
		iconClose: '@iconClose'
	link: (scope, element, attrs) ->
		iconOpen = scope.menuCtrl.iconOpen
		iconClose = scope.menuCtrl.iconClose
		$('.menu-icon').bind("transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd", -> 
			$('.icon-arrow').toggleClass("#{iconOpen} #{iconClose}")
		)