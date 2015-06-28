class GameOfLife::Generation
  def initialize(locations)
    @locations = locations
    
  end
  
  def self.live_locations
  	new(locations)
  end
  

  def self.with_live_cells_at(locations)
    new(locations)
  end
end
