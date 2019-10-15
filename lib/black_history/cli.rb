class BlackHistory::CLI
  def call
    puts "Welcome to the Black History App!"
    months_available
    months_event
    user_month
    
  end 
  
 # def events
  #  @events = []
  #end 
  
  def months_available
    @months = ['September', 'October', 'November']
  end 
  
  def months_event
    puts "Choose month to see which event is happening!"
    @months.each.with_index(1) do |month, index|
      puts "#{index}. #{month}"
    end 
  end 
  
  #def list_events
   # puts "Choose an event to see details."
    #@events.each.with_index(1) do |event, index|
     # puts "#{index}. #{event}"
    #end 
  #end 
  
  def user_month
    month_chosen = gets.strip
    binding.pry 
    # if valid_input(month_chosen.to_i, @months)
    #end 
  end 
  
  def valid_input(input,data)
    input <= data.length && input > 0 
  end
  
    
end

