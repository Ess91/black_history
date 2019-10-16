class BlackHistory::CLI
  def call
    puts "Welcome to the Black History App!"
 #   locations
  #  user_locations
   # menu
    #goodbye
    get_months
    list_months
  end 
  
  #def locations 
    #scrapped later 
   # @locations = ["Camden", "Islington", "Hackney", "Southwark", "Haringey"]
#end

def get_months
  @months = ["January", "Feburary", "March"]
end 

def list_months
  @months.each.with_index(1) do |month, index|
    puts "#{index}. #{month}"
  end 
end 
end 

#def user_locations 
  #list locations 
 # @locations.each.with_index(1) do |location, index|
  #puts "#{index}. #{location}"
  #end 
 #end 
#end 

