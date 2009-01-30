
class UnitSprite
  include Rubygame::Sprites::Sprite
  attr_accessor :unit
  def initialize image , unit
    super()
    @unit = unit
    @image = Rubygame::Surface.load(image)
    @rect = Rect.new(0,0,*image.size)
  end
end
