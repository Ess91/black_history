require_relative "./black_history/version"
require_relative "./black_history/cli"
require_relative "./black_history/oct_blackhistory"
require_relative "./black_history/scraper"

require 'pry-nav'
require 'nokogiri'
require 'open-uri'

module BlackHistory
  class Error < StandardError; end
  # Your code goes here...
end
