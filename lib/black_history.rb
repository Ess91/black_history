require_relative "./black_history/version"
require_relative "./black_history/cli"
require_relative "./black_history/month"
require_relative "./black_history/scraper"

require 'pry'
require 'nokogiri'

module BlackHistory
  class Error < StandardError; end
  # Your code goes here...
end
