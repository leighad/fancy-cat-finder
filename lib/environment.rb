require 'nokogiri'
require 'open-uri'
require 'pry'
require 'colorize' # '~> 0.8.1'
require 'lolize' #'~> 0.0.3'

require_relative "fancy_cat_finder/version"
require_relative "fancy_cat_finder/concerns/cat"
require_relative "fancy_cat_finder/concerns/cli"
require_relative "fancy_cat_finder/concerns/scraper"

# require_all 'lib'

# module FancyCatFinder
#   class Error < StandardError; end
#   # Your code goes here...
# end
