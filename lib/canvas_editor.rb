class CanvasEditor
  attr_reader :canvas

  def initialize
    @canvas = nil
  end

# I M N
  def create_canvas(x, y)
    if x > 250 || y > 250
      fail 'Maximum canvas size is 250 x 250'
    elsif x < 1 || y < 1
      fail 'Minimum canvas size is 1 x 1'
    else
      new_canvas = []
      y.times { new_canvas << Array.new(x, 'O') }
    end
    @canvas = new_canvas
    return new_canvas
  end

# L X Y C
  def color_pixel(x, y, color)
    @canvas[y - 1][x - 1] = color
    return @canvas
  end

# C
  def clear_canvas
    @canvas = @canvas.map { |y| y = Array.new(@canvas[0].length, 'O') }
    return @canvas
  end
end
