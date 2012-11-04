#!/usr/bin/env ruby

require 'rubygems'
require 'RMagick'
require 'rainbow'

class ASCII_Image
    def initialize(file, console_width = 80)
        @file = file
        @console_width = console_width
        
        if Magick::QuantumDepth > 8
            raise "Your ImageMagick quantum depth is set to #{Magick::QuantumDepth}. You need to have it set to 8 in order for this app to work."
        end
    end
    
    def build(width)
        # Open the image file
        image = Magick::Image.read(@file)[0]
        
        # Resize to the desired "text-pixel" size
        if width > @console_width
            raise ArgumentError, "The desired width is bigger than the console width"
        end
        
        image = image.scale(width / image.columns.to_f)
        # Compensate the height of the console "text-pixel"
        image = image.scale(image.columns, image.rows / 1.7)
        
        # Get the pixel array
        image.each_pixel do |pixel, col, row|
            print " ".background(pixel.red, pixel.green, pixel.blue)
            
            if (col % (width - 1) == 0) and (col != 0)
                print "\n"
            end
        end
        
        print "\n"
    end
end
