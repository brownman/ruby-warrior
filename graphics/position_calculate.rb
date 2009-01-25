

class Position_Calculate
  def translate_into_position x , y
    x = x * 50
    y = y * 50
    return x , y
  end
  def get_all_positions width , height
    width , height = translate_into_position(width , height)
    x = 0
    y = 0
    list_of_location = []
    loop do
      if x == width
	x = 0
        y += 50
      end
      if y == height
        break
      end
      list_of_location << [x,y]
      x += 50
    end
    return list_of_location
  end
end
