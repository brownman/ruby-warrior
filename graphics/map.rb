

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
end
