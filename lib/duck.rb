class Duck
  attr_reader :position
  attr_reader :direction
  
  def initialize(location_str, pond)
    x,y,d = location_str.split(' ')
    @position = Position.new(x, y, pond)
    @direction = Direction.new(d)
  end

  def position_and_direction
    "#{position.x} #{position.y} #{direction.points}"
  end

  def explore(instruction_sequence)
    instruction_sequence.split('').each{ |instruction| execute(instruction) }
  end
  
  private
  
  def execute(instruction)
    case instruction
      when 'P'  :   @direction.turn_left 
      when 'S'  :   @direction.turn_right
      when 'F'  :   move
    end
  end
  
  def move
    @position.change_in @direction unless movement_impossible?
  end
  
  def movement_impossible?
    (@position.on_north_limit? && @direction.north?)  ||
    (@position.on_south_limit? && @direction.south?)  ||
    (@position.on_east_limit?  && @direction.east?)   ||
    (@position.on_south_limit? && @direction.south?)
  end
  
end