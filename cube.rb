require 'ruby2d'

@width = Ruby2D::Window.width
@height = Ruby2D::Window.height


@apple = Square.new(x: @width / 2, y: @height /2, size: 32, color: 'red')
@square = Square.new(x: 0, y: 0, size: 32, color: 'green')

@x_speed = 0
@y_speed = 0

require_relative './controls/keyControl.rb'
require_relative './functions/windowUpdate.rb'