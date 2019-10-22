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
  

 # def call
  #  welcome
   # display_locations
    #user_input
    #find_events("Greenwich")
    #display_dates
    #display_times
    #display_descriptions
    #goodbye
  #end 
  
 # def welcome 
  #  puts "Welcome to Black History London"
  #end 
  
#def display_locations
 #   Oct_BlackHistory.all.each.with_index(1) do |location, index|
     # binding.pry
  #    puts "#{index}. #{location.locations}"
    #  binding.pry 
   # end
  #  binding.pry
  #end
#end 
  
 # def user_prompt
  #  puts "Select event"
  #end 
  
 # def user_input
  #   value = nil
   #  value = gets.chomp
    # index = value.to_i - 1
  # end

#def valid_response(input)
 # max_value = Oct_BlackHistory.all.length
  #min_value = 1
#end 
#end 
 # def valid_input(input, data)
  #  input.to_i <= data.length && input.to_i > 0
  #end

#def find_events(location)
 #Oct_BlackHistory.all.select do |event|
  # location == events.locations
  # binding.pry
  # events.events.each_with_index do |data, index|
   #end
   #puts "#{events}"
# end
 
 #location = location.events
   # puts "Here are events for #{location.locations}"
   
   # location.events.each.with_index (1) do |event, index|
     # puts "#{index}. #{event}"
    #end
    
    #def display_events(location)
 #Oct_BlackHistory.all.select do |event|
  # location == events.locations
   #binding.pry
   #events.events.each_with_index do |data, index|
   #end
   #puts "#{events}"
 #end
#end
#end 

 #def find_events
 #  events = Oct_BlackHistory.find_all
 #end
 #end 
   
  #  Oct_BlackHistory.find do |event, index|
   #   location == events.locations
 # end
#puts "#{events}"
#end
#end
#end 

    