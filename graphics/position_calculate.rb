

def Position_Calculate
  def translate_into_position x , y
    x = x * 50
    y = y * 50
    return x , y
  end
  def get_position_from_value width , height , v
    x = 0
    y = 0
    v.times do
      x += 50
      if x == width
	x = 0
        y += 50
      end
    end
    return x , y
  end
end
