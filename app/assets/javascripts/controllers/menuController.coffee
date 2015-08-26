angular.module 'WAMO'
.controller 'menuController',
[	'$scope' 
  ($scope) ->
	 	this.visibility = false
	 	this.toggleMenu = ->
	 		this.visibility = !this.visibility
	 	return
]