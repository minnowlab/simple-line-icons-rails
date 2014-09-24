# simple-line-icons-rails

simple-line-icons-rails provides the
[Simple-Line-Icons](http://graphicburger.com/simple-line-icons-webfont/) web fonts and
stylesheets as a Rails engine for use with the asset pipeline.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'simple-line-icons-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple-line-icons-rails

## Usage

In your `application.css`, include the css file:

```css
/*
 *= require simple-line-icons
 */
```
Then restart your webserver if it was previously running.

Congrats! You now have scalable vector icon support. Pick an icon and check out the
[Simple Line Icons Webfont](http://graphicburger.com/simple-line-icons-webfont/).

### Sass Support

If you prefer [SCSS](http://sass-lang.com/documentation/file.SASS_REFERENCE.html), add this to your
`application.css.scss` file:

```scss
@import "simple-line-icons";
```

If you use the
[Sass indented syntax](http://sass-lang.com/docs/yardoc/file.INDENTED_SYNTAX.html),
add this to your `application.css.sass` file:

```sass
@import simple-line-icons
```

## License

* The remainder of the simple-line-icons-rails project is licensed under the
  [MIT License](http://opensource.org/licenses/mit-license.html).
