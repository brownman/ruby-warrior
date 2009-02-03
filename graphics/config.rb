
class Graphic_Resource
  def initialize
    @config = nil
    config_name = "data/config.yml"
    yaml_string = File.read(config_name)
    @config = YAML::Load(yaml_string)
  end
  def start?
    return @config_file["graphic"]
  end
end
