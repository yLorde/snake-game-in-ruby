require 'ruby2d'

@view_x = 33;
@repeat = false


until @repeat do

  Line.new(
    y1: 0, x1: @view_x,
    y2: 512, x2: @view_x,
    width: 1,
    color: 'white'
  )

  @view_x = @view_x + 32
  if @view_x > 512
    @repeat = true
  else
    @repeat = false
  end
end