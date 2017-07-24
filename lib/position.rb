class Position
  attr_reader :x, :y

  def initialize(x, y, pond)
    @x, @y = x.to_i, y.to_i
    @pond = pond
  end

  def change_in(direction)
    @y += 1    if direction.north?
    @y -= 1    if direction.south?
    @x += 1    if direction.east?
    @x -= 1    if direction.west?
  end

  def on_north_limit?; @y == @pond.north_limit; end  
  def on_south_limit?; @y == @pond.south_limit; end  
  def on_east_limit?;  @x == @pond.east_limit;  end    
  def on_west_limit?;  @x == @pond.west_limit;  end    

end
