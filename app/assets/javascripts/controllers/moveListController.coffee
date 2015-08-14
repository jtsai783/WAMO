angular.module 'WAMO'
.controller 'moveListController',
['$scope', '$http', '$stateParams', 'followupService'
($scope, $http, $stateParams, followupService) ->
	$http method: 'GET', url: "/api/moves/#{$stateParams.char}"
	.success (data) ->
		data = _.filter	data, (move) ->
			move.startup > 0
		minStartupMove = _.min data, (move) ->
			move.startup 
		followupService.moves = _.filter data, (move) ->
			move.adv_hit >= minStartupMove.startup
		$scope.moves = followupService.moves
	$scope.linkOptions = (adv) ->
		followupService.calcOptions(adv)
]