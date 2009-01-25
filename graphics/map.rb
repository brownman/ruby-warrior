

class Map
  def initialize resource , screen
    @resource = resource
    @screen = screen
    @position = Position_Calculate.new()
    @map = []
    @object = Rubygame::Sprites::Group.new()
    @floor = nil
  end
  def set floor
    @floor = floor
  end
  def create
    @map = Array.new(@floor.width*@floor.height,0)
  end
  def set_map
    n = 0
    list = @position.get_all_positions(@floor.width,@floor.height)
    @map.each do |map|
      if map == 0
	object = Tile.new(@resource.name('floor'))
	object.rect.x = list[n][0]
	object.rect.y = list[n][1]
	@object << object
      end
      n += 1
    end
  end
  def draw
    @object.draw(@screen)
    @screen.flip()
  end
end
