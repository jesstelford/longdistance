define(
    // Module's name for dependancy lookups
    "ModuleName",
    [
        // depends on these modules
       'jquery',
       'underscore',
       'backbone',
    ],
// each dependancy is passed in as a parameter
function ($, _, Backbone) {

    // The module we're creating
    var Module = {
        // with publicly scoped members
        initialize: function() {
            // ...
        }
    };

    // return the module
    return Module;
});
