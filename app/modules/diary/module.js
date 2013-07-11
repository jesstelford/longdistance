define([
    'app',
    'backbone',
    'modules/diary/router'
], function (App, Backbone, DiaryRouter) {

    var DiaryModule = App.module.extend({

        initialize: function() {
            this.Router = new DiaryRouter('diary', {createTrailingSlashRoutes: true});
        }
    });

    // return the module
    return DiaryModule;
});
