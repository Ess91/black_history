class BlackHistory::CLI


  def call
    welcome
    display_locations
    #user_input
    find_events("Greenwich")
    #display_dates
    #display_times
    #display_descriptions
    #goodbye
  end 
  
  def welcome 
    puts "Welcome to Black History London"
  end 
  
def display_locations
    Oct_BlackHistory.all.each.with_index do |location, index|
     # binding.pry
      puts "#{index + 1}. #{location.locations}"
    #  binding.pry 
    end
  #  binding.pry
  end
end 
  
 # def user_prompt
  #  puts "Select event"
  #end 
  
  #def user_input
   # input = gets.strip
  #end 
#end 

#def valid_response(input)
 # max_value = Oct_BlackHistory.all.length
  #min_value = 1
#end 
#end 

def find_events(location)
  Oct_BlackHistory.all.select do |events|
    location == events.locations 
   # binding.pry
   # events.events.each_with_index do |data, index|
      puts "#{events}"
    end 
  end 