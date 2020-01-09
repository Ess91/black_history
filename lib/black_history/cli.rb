require 'pry'

class BlackHistory::CLI

  #def call 
   # welcome
    #start
  #  index = user_input 
   # location = BlackHistory::Oct_BlackHistory.all[index]
  #  display_events(location)
   # get_user_input
  #end 
  
  def call 
    welcome
    start
    index = user_input 
    area = BlackHistory::Oct_BlackHistory.all[index]
    display_events(area)
    get_user_input
  end 
  
    def welcome 
    puts "Welcome to Black History London"
  end 
  

 # def start
  #  puts ""
   # puts "Please select the location you wish to see:"
    #BlackHistory::Scraper.scrape_locations
    #BlackHistory::Oct_BlackHistory.all.each.with_index (1) do |location, index|
     # puts "#{index}. #{location.locations}"
  #end
#end 

 # def start
  #  puts ""
   # puts "Please select the location you wish to see:"
    #BlackHistory::Scraper.scrape_locations
    #BlackHistory::Oct_BlackHistory.all.each.with_index (1) do |area, index|
    #  puts "#{index}. #{area.locations}"
  #end
#end 

  def start
    puts ""
    puts "Please select the events you wish to see:"
    BlackHistory::Scraper.scrape_locations
    BlackHistory::Oct_BlackHistory.all.each.with_index (1) do |area, index|
      puts "#{index}. #{area.events}"
  end
end 

 def user_input
     value = nil
     value = gets.chomp
     index = value.to_i - 1
   end
  

  #def display_events(location)
    #puts ""
   #puts location.events
   #puts ""
   #puts location.dates 
   #puts ""
   #puts location.event_url
   #puts ""
  # puts location.descriptions
  #  end
    
     def display_events(location)
    puts ""
   puts location.events
   puts ""
   puts location.dates 
   puts ""
   puts location.event_url
   puts ""
  # puts location.descriptions
    end
   
    
    def get_user_input
    #puts ""
    puts "Would you like to see another location? Enter Y or N"
    
    input = gets.strip.downcase
    if input == "y" 
    call
    elsif input == "n"
      puts ""
      puts "Enjoy Black History!"
      exit
      else
      puts ""
      puts "Invalid!"
      get_user_input
    end
  end
end 