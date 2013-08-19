define ['angular'], ->
  'use strict'
  return angular.module('buttercoinApp', [])
      .config ($routeProvider) ->
        $routeProvider
          .when '/',
            templateUrl: 'views/whitelabel.html'
            controller: 'WhiteLabelCtrl'
          .otherwise
            redirectTo: '/'

      .run ($rootScope) ->
        $rootScope.$on "$routeChangeSuccess", (ev, data) ->
          $rootScope.controller =  data.controller if data.controller
