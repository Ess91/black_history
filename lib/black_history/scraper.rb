require 'pry'

class BlackHistory::Scraper
  
  
  def self.scrape_locations
    page = Nokogiri::HTML(open("https://www.blackhistorymonth.org.uk/listings/region/greater-london/"))
    page.css(".post-list-item--article").each do |page| #list-item - The article column that contains date, event, description
    area = BlackHistory::Oct_BlackHistory.new
    area.locations = page.css("span.post-listings-list-tax").text
    area.dates = page.css("span.post-listings-list-date").text 
    area.events = page.css("h2.post-listings-list-title").text
    area.event_url = page.css("a").attr("href").value 
  end 
 end 
#end

  def self.second_scrape(area)
    doc = Nokogiri::HTML(open(area.event_url))
    text = []
    doc.css(".content-main p").each do |description|
    text << description
  end
    area.descriptions = text.join("\n") 
end
end
#end

