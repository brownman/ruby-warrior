

class Units
  def initialize resource , screen
    @resource = resource
    @screen = screen
    @position = Position_Calculate.new()
  end
  def set_player warrior
    @player = Tile.new(@resource.name("player"))
    x , y = @position.translate_into_position(warrior.position[0],warrior.position[1])
    @player.rect.x = x
    @player.rect.y = y
  end
end
