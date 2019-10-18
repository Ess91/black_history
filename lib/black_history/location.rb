#class BlackHistory::Location
class Location
  @@all = []
  attr_accessor :events, :dates, :locations, :event_url

def initialize
  #@events = events 
  @dates = dates
  @locations = locations
  @event_url = event_url
  @@all << self 
end 
  
  def self.all 
     @@all 
  end 
end 