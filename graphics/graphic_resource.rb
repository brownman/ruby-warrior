

class Graphic_Resource
  attr_accessor :config_file
  def initialize
    @config_name = "data.yml"
    @config_file = nil
  end
  def read filename
    yam_string = File.read(filename)
    @config_file = YAML::load(yaml_string)
  end
end
