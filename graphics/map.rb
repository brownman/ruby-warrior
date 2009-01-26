

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
    @stair = @floor.stairs_location
  end
  def create
    @map = Array.new(@floor.width*@floor.height,0)
  end
  def set_map
    n = 0
    list = @position.get_all_positions(@floor.width,@floor.height)
    @map.each do |map|
      case map
      when 0
	object = Tile.new(@resource.name('floor'))
      end
      object.rect.x = list[n][0]
      object.rect.y = list[n][1]
      @object << object
      n += 1
    end
    stair_set()
  end
  def stair_set
    stair = Tile.new(@resource.name('stair'))
    x , y = @position.translate_into_position(@stair[0],@stair[1])
    stair.rect.x = x
    stair.rect.y = y
    @object << stair
  end
  def draw
    @object.draw(@screen)
    @screen.flip()
  end
end
