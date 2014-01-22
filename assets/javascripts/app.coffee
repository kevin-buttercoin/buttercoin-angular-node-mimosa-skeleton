define ['angular'], ->
  'use strict'
  return angular.module('buttercoinApp', [])
      .config ($routeProvider) ->
        $routeProvider
          .when '/',
            templateUrl: 'views/main.html'
            controller: 'MainCtrl'
          .otherwise
            redirectTo: '/'

      .run ($rootScope) ->
        $rootScope.$on "$routeChangeSuccess", (ev, data) ->
          $rootScope.controller =  data.controller if data.controller
