

class Engine
  attr_accessor :map
  def initialize
    @screen = Screen.new([800,600],0,[Rubygame::HWSURFACE,Rubygame::DOUBLEBUF])
    @resource = Graphic_Resource.new()
    @map = Map.new(@resource,@screen)
  end
end
