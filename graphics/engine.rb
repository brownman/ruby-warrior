

class Engine
  attr_accessor :maps
  def initialize
    @screen = Screen.new([800,600],0,[Rubygame::HWSURFACE,Rubygame::DOUBLEBUF])
    @resource = Graphic_Resource.new()
    @maps = Maps.new(@resource,@screen)
    @units = Units.new(@resource,@screen)
  end
end
