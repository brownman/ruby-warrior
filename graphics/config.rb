
class Configuration
  attr_reader :runnable
  def initialize
    @runnable = false
    @config = nil
    config_name = "data/config.yml"
    yaml_string = File.read(config_name)
    @config = YAML::load(yaml_string)
  end
  def start?
    if @config["graphic"] == true
      return true
    end
  end
end
