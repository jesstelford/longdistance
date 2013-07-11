define([
    'backbone',
    'backbone.subroute',
    'modules/diary/module',
    'modules/diary/views/home',
], function (Backbone, SubRoute, DiaryModule, HomeView) {

    var DiaryRouter = Backbone.SubRoute.extend({

        routes: {
            "": "home",
            "foo": "foo",

            "*404": "404"
        },

        home: function() {
            var diaryHome = new HomeView();
            var renderedView = diaryHome.render();
            renderedView.$el.appendTo("body");

            console.log("Diary Index route");
        },

        foo: function() {
            console.log("Diary Foo route");
        },

        "404": function() {
            console.log("Diary route 404");
        }


    });

    return DiaryRouter;

});
