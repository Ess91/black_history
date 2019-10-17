require 'pry-nav'
require 'nokogiri'
require 'open-uri'

#class BlackHistory::Scraper
  #def self.scrape_locations
    doc = Nokogiri::HTML(open("https://www.blackhistorymonth.org.uk/listings/region/greater-london/"))
    doc.css(".row").each do |page|
#page.each do |data|
   locations = page.css("span.post-listings-list-tax").text
   dates = page.css("span.post-listings-list-date").text 
   events = page.css("h2.post-listings-list-title").text
   binding.pry 

end 
 # events = doc.css(".post-listings-list-title")
  # events_url = events.css("a").attr("href").value
   
#end

#doc = Nokogiri::HTML(open("https://www.blackhistorymonth.org.uk/article/listings/region/city-of-london/sunday-sorbet-caribbean-bruch/"))
 #   descriptions = doc.css(".structured-content").first.text
    
  #end 