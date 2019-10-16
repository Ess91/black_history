class BlackHistory::Scraper
  def self.scrape_locations
    doc = Nokogiri::HTML(open("https://www.blackhistorymonth.org.uk/listings/region/greater-london/"))
    binding.pry 
end jj 
end