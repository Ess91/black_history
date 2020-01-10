require 'pry'

class BlackHistory::CLI

  
  def call 
    welcome
    start
    index = user_input 
    area = BlackHistory::Oct_BlackHistory.all[index]
    display_info(area)
    information
    get_user_input
  end 
  
    def welcome 
    puts "Welcome to Black History London"
  end 
  

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
  
    
  def display_info(area)
   puts ""
   puts area.events 
   puts ""
   puts area.locations 
   puts ""
   puts area.dates 
   puts ""
   puts area.event_url
   puts ""
   puts area.descriptions
  end
 
 #binding.pry 
     def information
  #  puts ""
    #puts "Please select the events you wish to see:"
    BlackHistory::Scraper.second_scrape
    BlackHistory::Oct_BlackHistory.all.each do |area|
      puts "#{area.descriptions}"
  end
end 
    
   
    def get_user_input
    #puts ""
    puts "Would you like to see another event? Enter Y or N"
    
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