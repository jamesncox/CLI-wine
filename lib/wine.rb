# require "cli/wine/version"
#
# module Cli
#   module Wine
#     class Error < StandardError; end
#     puts 'hi'
#   end
# end
require_relative 'wine/version'
require_relative 'wine/cli'
require_relative 'wine/wine_scraper'
require 'pry'
require 'nokogiri'
require 'open-uri'
