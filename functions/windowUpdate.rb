update do

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