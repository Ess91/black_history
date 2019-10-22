require 'pry-nav'
require 'nokogiri'
require 'open-uri'
require_relative './oct_blackhistory'

#class BlackHistory::Scraper
  #def self.scrape_locations
    doc = Nokogiri::HTML(open("https://www.blackhistorymonth.org.uk/listings/region/greater-london/"))
    doc.css(".post-list-item--article").each do |page| 
   location = Oct_BlackHistory.new
   location.locations = page.css("span.post-listings-list-tax").text
   location.dates = page.css("span.post-listings-list-date").text 
   location.events = page.css("h2.post-listings-list-title").text
   location.event_url = page.css("a").attr("href").value
   location.descriptions = page.css(".content-main p")
  end 
  
 
  doc = Nokogiri::HTML(open("https://www.blackhistorymonth.org.uk/article/listings/region/city-of-london/sunday-sorbet-caribbean-bruch/"))
    
  def event_url
    location.descriptions = doc.css(".content-main p").map do |description|
    description.text
    end 
    descriptions.join("\n")
  end 
  