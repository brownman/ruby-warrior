

class Position_Calculate
  def translate_into_position x , y
    x = x * 50
    y = y * 50
    return x , y
  end
  def find_element stair , map
    map_x , map_y = translate_into_position(map[0],map[1])
    stair_x , stair_y = translate_into_position(stair[0],stair[1])
    x = 0
    y = 0
    n = 0
    loop do
      if stair_x == x && stair_y == y
	break
      end
      if x == map_x
	x = 0
	y += 50
      end
      if y == map_y
       	break
      end
      x += 50
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
