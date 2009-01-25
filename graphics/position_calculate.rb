

class Position_Calculate
  def translate_into_position x , y
    x = x * 50
    y = y * 50
    return x , y
  end
  def get_all_positions width , height
    x = 0
    y = 0
    list_of_location = []
    loop do
      x += 50
      if x == width
	x = 0
        y += 50
      end
      if y == height
        return
      end
      list_of_location << [x,y]
    end
    return list_of_location
  end
end
