class GameOfLife::Cell
  ALIVE = "alive"
  DEAD = "dead"

  def self.new_dead_cell
    new(DEAD)
    
  end
  def self.new_live_cell
    new(ALIVE)
  end
  def initialize(state)
    @state = state
  end
  
  def dead?

    @state == DEAD
  end

  def alive?
    @state == ALIVE
  end
  
  def next_generation(neighbours)
    @neighbours = neighbours
    @state = alive? ? live_cell_generation_rule : dead_cell_generation_rule
    self
  end
    
  def live_cell_generation_rule
    [2,3].include?(number_of_alive_cells(@neighbours)) ? ALIVE : DEAD
  end

  def dead_cell_generation_rule
    [3].include?(number_of_alive_cells(@neighbours)) ? ALIVE : DEAD
  end

  def number_of_alive_cells(array)
    array.select{ |cell| cell.alive? }.length
  end
  
end