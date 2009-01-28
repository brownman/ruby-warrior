

class Engine
  attr_accessor :maps , :units
  def initialize
    @screen = Screen.new([800,600],0,[Rubygame::HWSURFACE,Rubygame::DOUBLEBUF])
    @resource = Graphic_Resource.new()
    @maps = Maps.new(@resource,@screen)
    @units = Units.new(@resource,@screen)
  end
  def draw
    @maps.draw()
    @units.draw()
    @screen.flip()
  end
end
