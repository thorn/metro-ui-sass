# MetroUI SASS

This is SASS powered version of [Metro-UI-CSS](https://github.com/olton/Metro-UI-CSS).

## Installation

Add this line to your application's `Gemfile`:

    gem 'metro-ui-sass', git: 'git://github.com/thorn/metro-ui-sass.git'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install metro-ui-sass

## Usage

Include all css by requiring `metro-ui.css` in your application.scss

    @import 'metro-ui';

Also don't forget to include js modules that you would use

    //= require metro-core.js
    //= require metro-touch-handler.js
    //= require metro-accordion.js
    //= require metro-button-set.js
    //= require metro-date-format.js
    //= require metro-calendar.js
    //= require metro-datepicker.js
    //= require metro-carousel.js
    //= require metro-countdown.js
    //= require metro-dropdown.js
    //= require metro-input-control.js
    //= require metro-live-tile.js
    //= require metro-progressbar.js
    //= require metro-rating.js
    //= require metro-slider.js
    //= require metro-tab-control.js
    //= require metro-table.js
    //= require metro-times.js
    //= require metro-dialog.js
    //= require metro-notify.js
    //= require metro-listview.js
    //= require metro-treeview.js
    //= require metro-fluentmenu.js
    //= require metro-hint.js

## Documentation

Documentation is located at [here](http://metroui.org.ua/)

## Demo

Demo Rails application is included in testapp folder.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
