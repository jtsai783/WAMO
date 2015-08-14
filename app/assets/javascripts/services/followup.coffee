FollowupService = ->
	self = this
	self.followups = []
	self.calcOptions = (adv) ->
		self.followups = []
		_.each self.moves, (element, index) ->
			if element.startup != 0
				difficulty = adv- element.startup + 1
				element.difficulty = difficulty
				self.followups.push element if difficulty > 0
		self.followups = _.sortBy self.followups, (el) ->
			return -el.difficulty
	return

angular.module 'WAMO'
.service 'followupService', FollowupService