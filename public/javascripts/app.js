define(['angular'], function() {
  'use strict';
  return angular.module('buttercoinApp', []).config(function($routeProvider) {
    return $routeProvider.when('/', {
      templateUrl: 'views/whitelabel.html',
      controller: 'WhiteLabelCtrl'
    }).otherwise({
      redirectTo: '/'
    });
  }).run(function($rootScope) {
    return $rootScope.$on("$routeChangeSuccess", function(ev, data) {
      if (data.controller) {
        return $rootScope.controller = data.controller;
      }
    });
  });
});
