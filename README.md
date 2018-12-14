# ascii-image

[![Gem Version](https://badge.fury.io/rb/ascii-image.svg)](https://badge.fury.io/rb/ascii-image)  
A Ruby gem to convert images into ASCII for your awesome command-line applications.  
*This is my first Ruby gem*

## Installation
This gem relies on [RMagick](https://github.com/rmagick/rmagick), so you will need to ensure you install the [prerequisites](https://github.com/rmagick/rmagick#prerequisites) (ImageMagick).

Install in your terminal with:
```
gem install ascii-image
```

Or in your Gemfile:

```
gem 'ascii-image'
```

## Example

Convert an image to ASCII and print it using 20 columns of the console:

    ascii = ASCII_Image.new("~/my_image.jpg")
    ascii.build(20)

or open the image from the web:

    ascii = ASCII_Image.new("http://www.levihackwith.com/wp-content/uploads/2011/10/github-logo.png")
    ascii.build(60)

## License

This library is licensed under the GPLv3 license.

 > ascii-image - A Ruby gem to convert images into ASCII.
 > Copyright (C) 2012 Nathan Campos
 > 
 > This program is free software: you can redistribute it and/or modify
 > it under the terms of the GNU General Public License as published by
 > the Free Software Foundation, either version 3 of the License, or
 > (at your option) any later version.
 > 
 > This program is distributed in the hope that it will be useful,
 > but WITHOUT ANY WARRANTY; without even the implied warranty of
 > MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 > GNU General Public License for more details.
 > 
 > You should have received a copy of the GNU General Public License
 > along with this program.  If not, see <http://www.gnu.org/licenses/>.
