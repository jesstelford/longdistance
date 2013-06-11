var jam = {
    "packages": [
        {
            "name": "backbone.layoutmanager",
            "location": "..%2Fvendor%2Fjam/backbone.layoutmanager",
            "main": "backbone.layoutmanager.js"
        },
        {
            "name": "backbone",
            "location": "..%2Fvendor%2Fjam/backbone",
            "main": "backbone.js"
        },
        {
            "name": "lodash",
            "location": "..%2Fvendor%2Fjam/lodash",
            "main": "./dist/lodash.compat.js"
        },
        {
            "name": "jquery",
            "location": "..%2Fvendor%2Fjam/jquery",
            "main": "dist/jquery.js"
        },
        {
            "name": "underscore",
            "location": "..%2Fvendor%2Fjam/underscore",
            "main": "underscore.js"
        }
    ],
    "version": "0.2.17",
    "shim": {
        "backbone": {
            "deps": [
                "underscore",
                "jquery"
            ],
            "exports": "Backbone"
        },
        "underscore": {
            "exports": "_"
        }
    }
};

if (typeof require !== "undefined" && require.config) {
    require.config({
    "packages": [
        {
            "name": "backbone.layoutmanager",
            "location": "..%2Fvendor%2Fjam/backbone.layoutmanager",
            "main": "backbone.layoutmanager.js"
        },
        {
            "name": "backbone",
            "location": "..%2Fvendor%2Fjam/backbone",
            "main": "backbone.js"
        },
        {
            "name": "lodash",
            "location": "..%2Fvendor%2Fjam/lodash",
            "main": "./dist/lodash.compat.js"
        },
        {
            "name": "jquery",
            "location": "..%2Fvendor%2Fjam/jquery",
            "main": "dist/jquery.js"
        },
        {
            "name": "underscore",
            "location": "..%2Fvendor%2Fjam/underscore",
            "main": "underscore.js"
        }
    ],
    "shim": {
        "backbone": {
            "deps": [
                "underscore",
                "jquery"
            ],
            "exports": "Backbone"
        },
        "underscore": {
            "exports": "_"
        }
    }
});
}
else {
    var require = {
    "packages": [
        {
            "name": "backbone.layoutmanager",
            "location": "..%2Fvendor%2Fjam/backbone.layoutmanager",
            "main": "backbone.layoutmanager.js"
        },
        {
            "name": "backbone",
            "location": "..%2Fvendor%2Fjam/backbone",
            "main": "backbone.js"
        },
        {
            "name": "lodash",
            "location": "..%2Fvendor%2Fjam/lodash",
            "main": "./dist/lodash.compat.js"
        },
        {
            "name": "jquery",
            "location": "..%2Fvendor%2Fjam/jquery",
            "main": "dist/jquery.js"
        },
        {
            "name": "underscore",
            "location": "..%2Fvendor%2Fjam/underscore",
            "main": "underscore.js"
        }
    ],
    "shim": {
        "backbone": {
            "deps": [
                "underscore",
                "jquery"
            ],
            "exports": "Backbone"
        },
        "underscore": {
            "exports": "_"
        }
    }
};
}

if (typeof exports !== "undefined" && typeof module !== "undefined") {
    module.exports = jam;
}