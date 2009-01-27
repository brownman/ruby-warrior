

class Position_Calculate
  def translate_into_position x , y
    x = x * 50
    y = y * 50
    return x , y
  end
  def find_element x , y
    n = 0
    x_rect = 0
    y_rect = 0
    loop do
     if x_rect == x
       x_rect = 0
       if y_rect == y
	 break
       end
       y_rect += 50
     end
     x_rect += 50
     n += 1
    end
    return n
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
