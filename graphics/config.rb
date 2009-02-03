
class Graphic_Resource
  def initialize
    @config = nil
    config_name = "data/config.yml"
    yaml_string = File.read(config_name)
    @config = YAML::Load(yaml_string)
  end
  def start?
    @config_file["graphic"] if
    graphic_set()
  end
  def dependency_set
    require"rubygame"
    include Rubygame
  end
  def graphic_set
    require 'graphics/graphics_resource.rb'
    require 'graphics/graphics_engine.rb'
    require 'graphics/engine.rb'
    require 'graphics/tile.rb'
    require 'graphics/position_calculate.rb'
    require 'graphics/maps.rb'
    require 'graphics/unitsprite.rb'
    require 'graphics/units.rb'
  end
  
end
