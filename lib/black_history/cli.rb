class BlackHistory::CLI
  def call
    puts "Welcome to the Black History App!"
    locations
    user_locations
    get_user_locations
   #menu
    #goodbye
    #get_months
    #list_months
  end 
  
  def locations 
    #scrapped later 
    @locations = ["Camden", "Islington", "Hackney", "Southwark", "Haringey"]
end



def user_locations 
  puts "Choose location you wish to view:"
  @locations.each.with_index(1) do |location, index|
    puts "#{index}. #{location}"
  end 
 end 

def get_user_locations
  chosen_location = gets.strip
  if valid_input(chosen_location, @locations)
    show_events(chosen_location)
  end
end 

def valid_input (input, data)
  input.to_i <= @locations.length && input.to_i > 0 
end

def show_events(chosen_location)
  location = @locations[chosen_location -1]
  puts "Here are a list of events for #{location} chosen"
  binding.pry 
end

#def get_months
 # @months = ["January", "Feburary", "March"]
#end 

#def list_months
 # @months.each.with_index(1) do |month, index|
  #  puts "#{index}. #{month}"
  #end 
#end 
#end 