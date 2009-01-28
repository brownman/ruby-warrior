

class Units
  def initialize resource , screen
    @resource = resource
    @screen = screen
    @position = Position_Calculate.new()
  end
  def set_player warrior
    pos = warrior.position.location()
    @player = Tile.new(@resource.name("player"))
    x , y = @position.translate_into_position(pos[0],pos[1])
    @player.rect.x = x
    @player.rect.y = y
  end
  def draw
    @player.draw(screen)
  end
end
