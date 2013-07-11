// Require this module by referencing its path directly in the define
// dependencies array
define([
    // depends on these modules
    // each dependancy is passed in as a parameter
    'jquery',
    'underscore',
    'backbone',
], function ($, _, Backbone) {

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
