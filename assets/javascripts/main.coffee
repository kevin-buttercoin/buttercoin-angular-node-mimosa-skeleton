requirejs.config
  baseUrl: './javascripts'
  paths:
    c: 'controllers'
    # Uncomment these lines when you add files in these directories
    # Also add each file to the require section below (e.g. 'c/main', 'd/your-directive', etc)
    #d: 'directives'
    #f: 'filters'
    #s: 'services'
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



require ['c/main'], ->
  angular.bootstrap(document, ['buttercoinApp'])

