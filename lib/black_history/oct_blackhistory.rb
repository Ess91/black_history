#class BlackHistory::Location
class Oct_BlackHistory
  @@all = []
  attr_accessor :events, :dates, :locations, :event_url, :descriptions

def initialize
  #@events = events 
  #@dates = dates
  #@locations = locations
  #@event_url = event_url
  #@descriptions = descriptions
  @@all << self 
end 
  
  def self.all 
     @@all 
  end 
end 
