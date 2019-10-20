creating the flow
classes 
  event
  Location
  Date 
scraper
CLI
user interface
  easy access
  Select event - Event Details
      Location
      Date
linking files together

codes
  scraper
      # events = doc.css(".post-listings-list-title")
  # events_url = events.css("a").attr("href").value
end

doc = Nokogiri::HTML(open("https://www.blackhistorymonth.org.uk/article/listings/region/city-of-london/sunday-sorbet-caribbean-bruch/"))
 #   descriptions = doc.css(".structured-content").first.text
    
  #end 
  
