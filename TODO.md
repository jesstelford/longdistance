TODO
====

 1. Installable via grunt
  * Using Bower / Volo / Jam?
   * Not Jam - all the packages there seem to be outdated
   * Can we somehow use github revisions as the versions?
    * What about just using git submodules?
 1. Cucumber tests automated
 1. Use semver.org versioning
 1. Move 404 page to a backbone view? What about people that don't have JS enabled?
 1. Default page view while app is (down)loading.
  * Would this require CSS to be in the head before the page is loaded?
 1. CSS / Stylus
  * [RequireCSS](https://github.com/guybedford/require-css) for requiring CSS by a view
  * Watch .styl files and compile them to CSS
  * Generate source maps for compiled .styl / css
  * Use [Bless](http://blesscss.com/) to ensure IE's selector limit isn't reached
  * Generate a sourcemap from Bless to the original compiled CSS
  * Automate all the above ([require-stylus](https://github.com/Se7enSky/require-stylus)?)
  * One huge .css file with single HTTP request vs .css file per module?
  * Use [nib](http://visionmedia.github.io/nib/) as a library of stylus mixins

