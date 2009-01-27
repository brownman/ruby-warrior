

class Maps
  def initialize resource , screen
    @resource = resource
    @screen = screen
    @position = Position_Calculate.new()
    @map = []
    @map_object = Rubygame::Sprites::Group.new()
    @floor = nil
  end
  def set floor
    @floor = floor
  end
  def create
    @map = Array.new(@floor.width*@floor.height,0)
    stair = @position.find_element(@floor.stairs_location[0]*50,@floor.stairs_location[1]*50)
    @map[stair] = 2
  end
  def set_map
    n = 0
    list = @position.get_all_positions(@floor.width,@floor.height)
    @map.each do |map|
      case map
      when 0
	tile = Tile.new(@resource.name('floor'))
      when 1
	tile = Tile.new(@resource.name('wall'))
      when 2
	tile = Tile.new(@resource.name('stair'))
      end
      tile.rect.x = list[n][0]
      tile.rect.y = list[n][1]
      @map_object << tile
      n += 1
    end
  end
  def draw
    @map_object.draw(@screen)
    @screen.flip()
  end
end
