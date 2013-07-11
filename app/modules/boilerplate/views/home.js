define([
    'backbone',
], function (Backbone) {

    var HomeView = Backbone.View.extend({

        template: '[template-path]/home',
        
        initialize: function() {
            // ...
        }

    });

    // return the View
    return HomeView;
});
