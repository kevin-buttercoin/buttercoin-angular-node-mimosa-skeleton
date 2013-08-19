exports.config =
  server:
    defaultServer:
      onePager: true
    views:
      extension: ".ejs"
      compileWith: "ejs"
      path: "assets/views"
  modules:['bower','require','server','minify','live-reload','web-package', 'combine']
  minify:
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
        exclude: null
        order: null
      },
      {
        folder: "stylesheets/views"
        output: "stylesheets/vendor/application.css"
        exclude: null
        order: null
      }
    ]
    removeCombined:
      enabled: true
      exclude: []
