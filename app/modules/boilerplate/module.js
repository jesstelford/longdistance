define([
    'app',
    'backbone',
    'modules/boilerplate/router'
], function (App, Backbone, Router) {

    var Module = App.module.extend({

        initialize: function() {
            this.Router = new Router('[URL-PREFIX]')
        }
    });

    // return the module
    return Module;
});
