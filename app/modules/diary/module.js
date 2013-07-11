define([
    'app',
    'backbone',
    'modules/diary/router'
], function (App, Backbone, DiaryRouter) {

    var DiaryModule = App.module.extend({

        Views: {},

        initialize: function() {
            this.Router = new DiaryRouter('diary')
        }
    });

    // return the module
    return DiaryModule;
});
