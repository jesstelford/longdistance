define([
    'app',
    'backbone',
    'modules/boilerplate/router'
], function (App, Backbone, Router) {

    var Module = App.module.extend({

        initialize: function() {
            this.Router = new Router('[URL-PREFIX]', {createTrailingSlashRoutes: true});
        }
    });

    // return the module
    return Module;
});

/** Usage **/

/* app/router.js */
/*
    routes: {
        // ...
        // The "/sub" will match any subroutes
        "my-module(/*sub)": "myModule",
        // ...
    },

    myModule: function() {
        // Lazily load the module
        if (!App.Modules.Boilerplate) {
            App.Modules.Boilerplate = new BoilerplateModule();
        }
    },

    // ...
*/
