define([
    'backbone'
], function (Backbone) {

    var HomeView = Backbone.View.extend({

        template: 'diary/home',
        
        initialize: function() {
            // ...
        }

    });

    // return the module
    return HomeView;
});
