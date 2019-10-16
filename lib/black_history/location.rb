class BlackHistory::Location
  @@all = []
  attr_accessor :name, :dates, :events

def initialize(name)
  @name = name
  @dates = dates
  @events = events
  @@all << self 
end 
  
  def self.all 
     @@all 
  end 
end 