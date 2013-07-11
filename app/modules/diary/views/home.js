define([
    'backbone',
    'modules/diary/diary'
], function (Backbone, DiaryModule) {

    DiaryModule.Views.Home = Backbone.View.extend({

        template: 'diary/home',
        
        initialize: function() {
            // ...
        }

    });

    // return the module
    return DiaryModule.Views.Home;
});
