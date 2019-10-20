class BlackHistory::CLI


  def call
    welcome
    display_locations
    user_input
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
  
  def user_input
     value = nil
     value = gets.chomp
     index = value.to_i - 1
   end

#def valid_response(input)
 # max_value = Oct_BlackHistory.all.length
  #min_value = 1
#end 
#end 

def find_events(index)
    Oct_BlackHistory.each_with_index do |events, i|
    #i represents an index as well
      index == i
  end
puts "#{events}"
end