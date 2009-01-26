

class Tile 
  include Rubygame::Sprites::Sprite
  def initialize image
    super()
    @image = Rubygame::Surface.load(image)
    @rect = Rect.new(0,0,*image.size)
  end
end
