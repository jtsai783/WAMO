angular.module 'WAMO'
.controller 'followUpController',
 ['$scope', 'followupService'
  ($scope, followupService) ->
  	$scope.$watch ->
  		return followupService.followups
  	, (newVal, oldVal) ->
  		$scope.followups = followupService.followups
 ]