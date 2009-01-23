

class Engine
  def initialize
    @screen = Screen.new([800,600],0,[Rubygame::HWSURFACE,Rubygame::DOUBLEBUF])
    @map = Map.new()
  end
end
