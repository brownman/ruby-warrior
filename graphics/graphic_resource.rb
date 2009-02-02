

class Graphic_Resource
  attr_accessor :data_file , :config_file
  def initialize
    @data_file = nil
    @config_file = nil
    data_name = "data/data.yml"
    config_name = "data/config.yml"
    yaml_string = File.read(data_name)
    @data_file = YAML::load(yaml_string)
    yaml_string = File.read(config_name)
    @config_file = YAML::load(yaml_string)
  end
  def name name
    return @data_file[name]
  end
end
