// Set the require.js configuration for your application.
require.config({

  // Initialize the application with the main application file and the JamJS
  // generated configuration file.
  deps: ["../vendor/jam/require.config", "main"],

  paths: {
    // Use the underscore build of Lo-Dash to minimize incompatibilities.
    "lodash": "../vendor/jam/lodash/dist/lodash.underscore",

    // Put additional paths here.
    "mustache": "../node_modules/mustache/mustache",
    "backbone.subroute": "../vendor/git/backbone.subroute/backbone.subroute"
  },

  map: {
    // Ensure Lo-Dash is used instead of underscore.
    "*": { "underscore": "lodash" }

    // Put additional maps here.
  },

  shim: {
    // Put shims here.
  }

});

// Modernizr is loaded in the <head> tag, so define its module here
window.Modernizr && define('modernizr', [], window.Modernizr);
