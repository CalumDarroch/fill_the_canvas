class CanvasEditor
  attr_reader :canvas

  def initialize
    @canvas = nil
  end

  def create_canvas(m, n)
    if m > 250 || n > 250
      fail 'Maximum canvas size is 250 x 250'
    elsif m < 1 || n < 1
      fail 'Minimum canvas size is 1 x 1'
    else
      new_canvas = []
      n.times { new_canvas << Array.new(m, 'O') }
    end
    @canvas = new_canvas
    return new_canvas
  end

  def color_pixel(m, n, color)
    @canvas[n - 1][m - 1] = color
    return @canvas
  end

end
