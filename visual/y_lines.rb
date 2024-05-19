require 'ruby2d'

@view_y = 33;
@repeat = false


until @repeat do

  Line.new(
    x1: 0, y1: @view_y,
    x2: 512, y2: @view_y,
    width: 1,
    color: 'white',
  )

  @view_y = @view_y + 32
  if @view_y > 512
    @repeat = true
  else
    @repeat = false
  end
end