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
  
 # def print_location(input)
  #  puts ""
   # puts "---------- Locations----------"
    #puts ""
    # Oct_BlackHistory.all.each.with_index(1) do |location, index|
    #  puts "#{index}. #{location.locations}"
    #end
  #end
  
  #  def print_restaurant(restaurant)
 #   puts ""
  #  puts "----------- #{location.locations}"
   # puts ""
    #puts "Events:           #{location.events}"
    #puts "Dates:            #{location.dates}"
    #puts "Event URL:        #{location.event_url}"
    #puts "Description:      #{location.descriptions}"
    #puts ""
 
   puts ""
    puts "Would you like to see another restaurant? Enter Y or N"

    input = gets.strip.downcase
    if input == "y"
      start
    elsif input == "n"
      puts ""
      puts "Thank you! Have a great day!"
      exit
    else
      puts ""
      puts "I don't understand that answer."
      start
    end
  end