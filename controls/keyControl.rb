on :key_down do |event|
    if event.key == 'a'
      @x_speed = -2
      @y_speed = 0
    elsif event.key == 'd'
      @x_speed = 2
      @y_speed = 0
    elsif event.key == 'w'
      @x_speed = 0
      @y_speed = -2
    elsif event.key == 's'
      @x_speed = 0
      @y_speed = 2
    end
end