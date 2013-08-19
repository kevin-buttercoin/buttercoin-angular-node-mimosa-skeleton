define(['app'], function(app) {
  'use strict';
  return app.controller('MainCtrl', function($scope) {
    return window.scope = $scope;
  });
});
