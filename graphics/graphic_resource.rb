

class Graphic_Resource
  attr_accessor :config_file
  def initialize
    @config_name = "data/data.yml"
    @config_file = nil
    yam_string = File.read(@config_name)
    @config_file = YAML::load(yaml_string)
  end
end
