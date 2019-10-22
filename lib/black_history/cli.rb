require 'pry'

class BlackHistory::CLI

  def call 
    welcome
    start
    index = user_input 
    location = Oct_BlackHistory.all[index]
   # valid_response
    #find_events
    display_events(location)
    #find_events
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
#binding.pry 
end 

 def user_input
     value = nil
     value = gets.chomp
     index = value.to_i - 1
   end
  

#def valid_response
 # max_value = Oct_BlackHistory.all.length
#  min_value = 1
#end 



  def display_events(location)
    
   puts location.events
   
    end
    
      
  end
  
 
    
    