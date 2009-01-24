

class Map
  def initialize
    @map = []
  end
  def create width, height
    @map = Array.new(width*height,0)
  end
end
