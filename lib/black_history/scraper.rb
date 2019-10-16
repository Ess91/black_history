class BlackHistory::Scraper
  def self.scrape_months
    doc = Nokogiri::HTML(open("https://www.blackhistorymonth.org.uk/listings/region/greater-london/"))
end
end