

class Timer
  def initialize seconds , &action
    @interval = seconds
    @action = action
  end
  def check
    t = Time.now.tv_sec
    if t >= @fire_at
      @action.call()
      @fire_at = t + @interval
    end
  end
  def start
    @fire_at = Time.now.tv_sec + @interval
  end
end
