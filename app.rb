require 'ruby2d'

set({
    :title => 'Jogo Da Cobrinha em Ruby',
    :background => 'black',
    :width => 512,
    :height => 512,
    :resizable => false,
    :diagnostics => true
})

@width = Ruby2D::Window.width
@height = Ruby2D::Window.height

@apple = Square.new(x: @width / 2, y: @height /2, size: 32, color: 'red')
@square = Square.new(x: 10, y: 30, size: 32, color: 'green')

@x_speed = 0
@y_speed = 0

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
  
update do
    if @square.x == @apple.x
        if @square.y == @apple.y
            @apple.x = 100
            @apple.y = 100
        end
    end

    if @square.x > 0
        if @square.x > @width / 4
            if @square.x > @width - @square.size
                @square.x = @width - @square.size + 2
            end
        end
        @square.x += @x_speed
    else 
        @square.x = 1
    end

    if @square.y > 0
        if @square.y > @height / 4
            if @square.y > @height - @square.size
                @square.y = @height - @square.size + 2
            end
        end
        @square.y += @y_speed
    else
        @square.y = 1
    end
end

show

