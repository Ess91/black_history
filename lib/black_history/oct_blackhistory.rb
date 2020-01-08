require 'pry'

class BlackHistory::Oct_BlackHistory
  
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
  
  #Make the event the main instead of the locations, just to eliminate the duplication!
  
 # binding.pry 
  
  BlackHistory::Oct_BlackHistory.all.map do |location|
    return location.locations
  end.uniq!
 # locations.uniq!
  end
# end 
#end

