require 'pry'

class BlackHistory::CLI

  
  def call 
    welcome
    start
    index = user_input 
    area = BlackHistory::Oct_BlackHistory.all[index]
    BlackHistory::Scraper.second_scrape(area)
    display_info(area)
    get_user_input
  end 

  
    def welcome 
    puts "Welcome to Black History London"
  end 
  

  def start
    puts ""
    puts "Please select the events you wish to see:"
    puts ""
    BlackHistory::Scraper.scrape_locations
    #BlackHistory::Oct_BlackHistory.list_dates
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
   puts ""
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