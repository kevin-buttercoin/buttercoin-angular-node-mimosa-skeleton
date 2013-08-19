requirejs.config
  baseUrl: './javascripts'
  paths:
    angular: 'vendor/angular'
    jQuery: 'vendor/jquery'
    bootstrap: 'vendor/bootstrap'
    bootstrapSwitch: 'vendor/bootstrap-switch'
    bootstrapNotify: 'vendor/bootstrap-notify'
    chosen: 'vendor/chosen.jquery'
    moment: 'vendor/moment'
    'socket.io': 'vendor/io'
    EventEmitter: 'vendor/EventEmitter'
    underscore: 'vendor/underscore'
  shim:
    'app': ['bootstrap', 'socket.io', 'EventEmitter', 'bootstrapSwitch', 'bootstrapNotify', 'chosen', 'moment', 'jQuery', 'underscore']
    bootstrap: ['jQuery']
    bootstrapSwitch: ['jQuery', 'bootstrap']
    bootstrapNotify: ['jQuery', 'bootstrap']
    chosen: ['jQuery']

controllers = [
  'main'
]

directives = [
]

filters = [
]

services = [
]

dependencies = []

for c in controllers
  dependencies.push "controllers/#{c}"

for d in directives
  dependencies.push "directives/#{d}"

for f in filters
  dependencies.push "filters/#{f}"

for s in services
  dependencies.push "services/#{s}"

require dependencies, ->
  angular.bootstrap(document, ['buttercoinApp'])

