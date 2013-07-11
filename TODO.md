TODO
====

 1. Installable via grunt
  * Using Bower / Volo / Jam?
   * Not Jam - all the packages there seem to be outdated
   * Can we somehow use github revisions as the versions?
    * What about just using git submodules?
 1. Cucumber tests automated
 1. Use semver.org versioning
 1. CSS / Stylus
  1. [RequireCSS](https://github.com/guybedford/require-css) for requiring CSS by a view
  1. Watch .styl files and compile them to CSS
  1. Generate source maps for compiled .styl / css
  1. Use [Bless](http://blesscss.com/) to ensure IE's selector limit isn't reached
  1. Generate a sourcemap from Bless to the original compiled CSS
  1. Automate all the above ([require-stylus](https://github.com/Se7enSky/require-stylus)?)
  1. One huge .css file with single HTTP request vs .css file per module?
  1. Use [nib](http://visionmedia.github.io/nib/) as a library of stylus mixins

