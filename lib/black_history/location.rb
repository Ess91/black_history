class BlackHistory::Location
  @@all = []
  attr_accessor :name, :dates, :description, :event_url

def initialize(name)
  @name = name
  @dates = dates
  @event_url = event_url
  @description = []  
  @@all << self 
end 
  
  def self.all 
     @@all 
  end 
end 