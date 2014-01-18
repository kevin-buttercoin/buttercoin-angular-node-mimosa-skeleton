exports.config =
  server:
    port: 3000
  modules:['bower','require','server','minify','web-package', 'combine', 'karma']
  karma:
    files: [
      ANGULAR_SCENARIO: true
      ANGULAR_SCENARIO_ADAPTER: true
      'tests/e2e/**/*.coffee'
    ]
    frameworks: ['ng-scenario']
    urlRoot: '/__karma__/'
    proxies:
      '/': 'http://localhost:3000/'
    autoWatch: true
    browsers: ['Chrome']