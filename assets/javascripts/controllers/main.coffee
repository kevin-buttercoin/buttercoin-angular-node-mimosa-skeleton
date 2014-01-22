define ['app'], (app) ->
  'use strict'
  app.controller 'MainCtrl', ['$scope', ($scope) ->
    $scope.title = 'Welcome to Mimosa with Angular and Node'
  ]
