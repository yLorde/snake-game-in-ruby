require 'ruby2d'

set({
    :title => 'Jogo Da Cobrinha em Ruby',
    :background => 'black',
    :width => 512,
    :height => 512,
    :resizable => false,
    :diagnostics => false
})

require_relative './visual/y_lines.rb'
require_relative './visual/x_lines.rb'
require_relative './cube.rb'

show