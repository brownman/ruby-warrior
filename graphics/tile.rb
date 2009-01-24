

class Tile 
  include Rubygame::Sprites::Sprite
  def initialize image
    super()
    @image = Rubygame::Surface.load(image)
    @rect = Rubygame::Rect.new(0,0,*@image.size())
  end
end
