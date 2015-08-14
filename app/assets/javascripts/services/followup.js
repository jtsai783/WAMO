// Generated by CoffeeScript 1.9.3
var FollowupService;

FollowupService = function() {
  var self;
  self = this;
  self.followups = [];
  self.calcOptions = function(adv) {
    self.followups = [];
    _.each(self.moves, function(element, index) {
      var difficulty;
      if (element.startup !== 0) {
        difficulty = adv - element.startup + 1;
        element.difficulty = difficulty;
        if (difficulty > 0) {
          return self.followups.push(element);
        }
      }
    });
    return self.followups = _.sortBy(self.followups, function(el) {
      return -el.difficulty;
    });
  };
};

angular.module('WAMO').service('followupService', FollowupService);
