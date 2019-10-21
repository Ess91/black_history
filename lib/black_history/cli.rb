class BlackHistory::CLI


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
 
 
  
  
  def call 
    welcome
    start
    user_input
    valid_response
    #find_events
    display_events
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
end 

 def user_input
     value = nil
     value = gets.chomp
     index = value.to_i - 1
   end
  

def valid_response
  max_value = Oct_BlackHistory.all.length
  min_value = 1
end 

  def display_events
    puts "Here are events for #{location.locations}"
    location.events.each.with_index(1) do |event, index|
      puts "#{index}. #{event}"
    end
    end
  end
    
   # def find_events
 #Oct_BlackHistory.all.select do |event|
  # location == events.locations
  # binding.pry
   #events.events.each_with_index do |data, index|
  # end
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