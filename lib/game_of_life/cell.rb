class GameOfLife::Cell
  ALIVE = "alive"
  DEAD = "dead"

  def self.new_dead_cell
  	new(DEAD)
  	
  end
  def self.new_live_cell
  	new(ALIVE)
  end
  def initialize state
  	@state = state
  end
  attr_reader :state
  def dead?

  	state == DEAD
  end
  def alive?
  	state == ALIVE
  end
  
  def self.next_generation ()
    
  build_neighbours == i;
    
  end

  
end
