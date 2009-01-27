

class Units
  def initialize resource , screen
    @resource = resource
    @screen = screen
    @position = Position_Calculate.new()
  end
  def set_player warrior
    @player = Tile.new(@resource.name("player"))
  end
end
