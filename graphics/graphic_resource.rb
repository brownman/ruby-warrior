

class Graphic_Resource
  attr_accessor :config_file
  def initialize
    @config_file = nil
    config_name = "data/data.yml"
    yaml_string = File.read(config_name)
    @config_file = YAML::load(yaml_string)
  end
  def name name
    return @config_file[name]
  end
end
