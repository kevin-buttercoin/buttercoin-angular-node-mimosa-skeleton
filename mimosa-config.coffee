exports.config =
  minMimosaVersion: "2.0.0"
  modules:[
    'bower'
    'require'
    'server'
    'minify-js'
    'minify-css'
    'web-package'
    'combine'
    'coffeescript'
    'copy'
    'less']
  watch:
    exclude:[/[/\\](\.|~)[^/\\]+$/, /.ejs$/]
  require:
    tracking:
      enabled: true
  server:
    views:
      extension: "ejs"
      compileWith: "ejs"
      path: "assets/views"
  minifyJS:
    exclude:[/\.min\./, "javascripts/main.js"]
  bower:
    copy:
      strategy:
        '*': "vendorRoot"
      mainOverrides:
        chosen: ["chosen.jquery.js", "chosen.css", "chosen-sprite.png"]
        bootstrap: ["./docs/assets/js/bootstrap.js", "./docs/assets/css/bootstrap-responsive.css", "./docs/assets/css/bootstrap.css"]
        'bootstrap-switch': ["./static/js/bootstrap-switch.js", "./static/stylesheets/bootstrap-switch.css"]
        'bootstrap-notify': ["./js/bootstrap-notify.js", "./css/bootstrap-notify.css"]
  combine:
    folders: [
      {
        folder: "stylesheets/vendor"
        output: "stylesheets/vendor/vendor.css"
      }
      {
        folder: "stylesheets/views"
        output: "stylesheets/application.css"
      }
    ]
