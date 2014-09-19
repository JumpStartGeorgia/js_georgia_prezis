#!/usr/bin/env ruby

# script to run through a prezi and update x or y values to make it
# transition either horizontally or vertically for a quick prezi

require 'nokogiri'

file = ARGV.shift
page = Nokogiri::HTML(open(file))
slides = page.css("div").select{ |slide| slide["class"] == "step"}


