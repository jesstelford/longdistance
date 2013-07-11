define([
    // Application.
    "app",
    "modules/diary/module"
], function(App, DiaryModule) {

  // Defining the application router, you can attach sub routers here.
  var Router = Backbone.Router.extend({
    routes: {
      "": "index",
      "diary(/*subRoute)": "diary", // diary module with handle sub routes

      "*404": "404" // catch-all route
    },

    index: function() {
        console.log("index route");
    },

    diary: function() {
        // Lazily load Diary module
        if (!App.Modules.Diary) {
            App.Modules.Diary = new DiaryModule();
        }
    },

    "404": function() {
        console.log("Main route 404");
    }
  });

  return Router;

});
