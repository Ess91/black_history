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
  binding.pry 
  #if valid_input (chosen_location.to_i, @locations)
  #end
end 

def valid_input (input, data)
  input <= @locations.length && input > 0 
end
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