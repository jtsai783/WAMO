// Generated by CoffeeScript 1.9.3
angular.module('WAMO').directive('menu', function() {
  return {
    restrict: 'E',
    transclude: true,
    templateUrl: '/assets/views/menu.html',
    controller: 'menuController',
    controllerAs: 'menuCtrl',
    bindToController: true,
    scope: {
      iconOpen: '@iconOpen',
      iconClose: '@iconClose'
    },
    link: function(scope, element, attrs) {
      var iconClose, iconOpen;
      iconOpen = scope.menuCtrl.iconOpen;
      iconClose = scope.menuCtrl.iconClose;
      return $('.menu-icon').bind("transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd", function() {
        return $('.icon-arrow').toggleClass(iconOpen + " " + iconClose);
      });
    }
  };
});
