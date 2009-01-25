

class Map
  def initialize resource
    @resource = resource
    @map = []
    @object = []
    @floor = nil
  end
  def set floor
    @floor = floor
  end
  def create
    @map = Array.new(@floor.width*@floor.height,0)
  end
  def set_map
    @map.each do |map|
      if map == 0
	object = MapTiles.new(@resource.name('floor.png'))
	@object << object
      end
    end
  end
end
