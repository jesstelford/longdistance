define([
    'backbone',
    'modules/diary/diary',
], function (Backbone, DiaryModule) {

    var DiaryRouter = Backbone.SubRoute.extend({

        routes: {
            "": "home",
            "foo": "foo"
        },

        home: function() {
            var diaryHome = new DiaryModule.Views.Home();
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
