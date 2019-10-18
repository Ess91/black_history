class BlackHistory::CLI


  def call
    welcome
    display_events
    menu
    goodbye
  end 
  
  def welcome 
    puts "Welcome to Black History London"
  end 
  
def display_events
    Location.all.each.with_index(1) do |location, index|
      puts "#{index}.#{location.events}"
      binding.pry 
    end
  end
end 