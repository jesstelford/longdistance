define([
    'backbone',
    'modules/boilerplate/module',
    'modules/boilerplate/views/home',
], function (Backbone, BoilerplateModule, HomeView) {

    var Router = Backbone.SubRoute.extend({

        routes: {
            "": "home",
        },

        home: function() {
            // var homeView = new HomeView();
            // var renderedView = homeView.render();
            // renderedView.$el.appendTo("body");
        }

    });

    return Router;

});
