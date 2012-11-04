#!/usr/bin/env ruby

require 'rubygems'
require 'RMagick'
require 'rainbow'

class ASCII_Image
    def initialize(file, console_width = 80)
        @file = file
        @console_width = console_width
        
        if Magick::QuantumDepth > 8
            abort "Your ImageMagick quantum depth is set to #{Magick::QuantumDepth}. You need to have it set to 8 in order for this app to work."
        end
    end
    
    def build(width)
        # Open the image file
        image = Magick::Image.read(@file)[0]
        
        # Resize to the desired "text-pixel" size
        # TODO: Check if width <= @console_width
        image = image.scale(width / image.columns.to_f)
        
        # Get the pixel array
        image.each_pixel do |pixel, col, row|
            #puts "Pixel at #{col}x#{row}: R: #{pixel.red} - G: #{pixel.green} - B: #{pixel.blue}\n"
            
            print " ".background(pixel.red, pixel.green, pixel.blue)
            
            if (col % (width - 1) == 0) and (col != 0)
                print "\n"
            end
        end
        
        puts " "
    end
end

ascii = ASCII_Image.new("poster.jpg")
ascii.build(10)

# TODO: Get image
# TODO: Resize the image to the desired "text-pixel" size
# TODO: Get the pixel array
# TODO: Print it to the console
