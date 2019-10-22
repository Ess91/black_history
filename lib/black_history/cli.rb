require 'pry'

class BlackHistory::CLI

  def call 
    welcome
    start
    index = user_input 
    location = Oct_BlackHistory.all[index]
    display_events(location)
    menu
  end 
  
    def welcome 
    puts "Welcome to Black History London"
    start 
  end 
  

  def start
    puts ""
    puts "Please select the location you wish to see:"
    Oct_BlackHistory.all.each.with_index (1) do |location, index|
      puts "#{index}. #{location.locations}"
  end
end 

 def user_input
     value = nil
     value = gets.chomp
     index = value.to_i - 1
   end
  

  def display_events(location)
   puts location.events
   puts location.dates 
   puts location.descriptions
   puts location.event_url
    end
    
    def menu
      puts ""
   puts "Would you like to see another location? Enter Y or N"

    input = gets.strip.downcase
    if input == "y"
      start
    elsif input == "n"
      puts ""
      puts "Enjoy Black History!"
      exit
    else
      puts ""
      puts "I don't understand that answer."
      start
    end
  end
end
