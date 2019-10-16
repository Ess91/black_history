class BlackHistory::Location
  @@all = []
  attr_accessor :name

def initialize(name)
  @name = name
  @@all << self 
end 
  
  def self.all 
  end 
end 