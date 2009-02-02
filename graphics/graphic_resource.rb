

class Graphic_Resource
  attr_accessor :data_file
  def initialize
    @data_file = nil
    data_name = "data/data.yml"
    yaml_string = File.read(data_name)
    @data_file = YAML::load(yaml_string)
  end
  def name name
    return @data_file[name]
  end
end
