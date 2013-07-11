define([
    'backbone',
    'modules/boilerplate/module',
    'modules/boilerplate/views/home',
], function (Backbone, BoilerplateModule, HomeView) {

    var Router = Backbone.SubRoute.extend({

        routes: {
            "": "home",
            "*404": "404" // catch-all route
        },

        home: function() {
            // var homeView = new HomeView();
            // var renderedView = homeView.render();
            // renderedView.$el.appendTo("body");
        },

        "404": function() {
            console.error("Route 404");
        }

    });

    return Router;

});
