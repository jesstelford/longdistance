define([
    'backbone',
    'backbone.subroute',
    'modules/diary/module',
    'modules/diary/views/home',
], function (Backbone, SubRoute, DiaryModule, HomeView) {

    var DiaryRouter = Backbone.SubRoute.extend({

        routes: {
            "": "home",
            "foo": "foo"
        },

        home: function() {
            var diaryHome = new HomeView();
            var renderedView = diaryHome.render();
            renderedView.$el.appendTo("body");

            console.log("Diary Index route");
        },

        foo: function() {
            console.log("Diary Foo route");
        }

    });

    return DiaryRouter;

});
