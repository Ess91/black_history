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
 
#  doc = Nokogiri::HTML(open("https://www.blackhistorymonth.org.uk/article/listings/region/city-of-london/sunday-sorbet-caribbean-bruch/"))

#  def self.scrape_locations
 #   page = Nokogiri::HTML(open("https://www.blackhistorymonth.org.uk/listings/region/greater-london/"))
  #  page.css(".post-list-item--article").each do |page| #list-item - The article column that contains date, event, description
   # area = BlackHistory::Oct_BlackHistory.new
    #area.locations = page.css("span.post-listings-list-tax").text
    #area.dates = page.css("span.post-listings-list-date").text 
    #area.events = page.css("h2.post-listings-list-title").text
    #area.event_url = page.css("a").attr("href").value 
  #end 
 #end 
#end

    def self.second_scrape
      doc = Nokogiri::HTML(open("https://www.blackhistorymonth.org.uk/article/listings/region/croydon/black-history-personal-empowerment-and-african-cultural-studies-18-week/"))
      doc.css(".content-main").map do |doc|
        area = BlackHistory::Oct_BlackHistory.new
        area.descriptions = doc.css(".content-main p").text 
      end 
  end 
end 
       # descriptions.text 
      #end 
      #descriptions.join("\n")
   #end 
  #end 
 #end 
      
  
 # def self.second_scrape (iterate like the first level scraping)
 #def event_url
  #  page = Nokogiri::HTML(open("https://www.blackhistorymonth.org.uk/article/listings/region/lambeth/gamelan-poetry-workshops-lambeth-primary-offer-2019-2020/"))
    
 # def event_url
   # location.descriptions = doc.css(".content-main p").map do |description|
    #description.text
    #end 
    #descriptions.join("\n")
  #end 
#end 
