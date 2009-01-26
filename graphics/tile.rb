

class Tile 
  include Rubygame::Sprites::Sprite
  def initialize image
    super()
    @image = Rubygame::Surface.load(image)
  end
end
