FollowupService = ->
	self = this
	self.followups = []
	self.calcOptions = (adv) ->
		self.followups = []
		_.each self.allMoves, (element, index) ->
			if element.startup != 0 && element.recovery != 0
				difficulty = adv - element.startup + 1
				element.difficulty = difficulty
				self.followups.push element if difficulty >= -2
		self.followups = _.sortBy self.followups, (el) ->
			return -el.difficulty
	return

angular.module 'WAMO'
.service 'followupService', FollowupService