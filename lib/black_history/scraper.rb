class BlackHistory::Scraper
  def self.scrape_locations
    doc = Nokogiri::HTML(open("https://www.blackhistorymonth.org.uk/listings/region/greater-london/"))
   locations = doc.css("span.post-listings-list-tax").text
   dates = doc.css("span.post-listings-list-date").text 
   events = doc.css("h2.post-listings-list-title").text
   
end

  events = doc.css(".post-listings-list-title")
   events_url = events.css("a").attr("href").value
   
end

doc = Nokogiri::HTML(open("https://www.blackhistorymonth.org.uk/article/listings/region/city-of-london/sunday-sorbet-caribbean-bruch/"))
    descriptions = doc.css(".structured-content").first.text