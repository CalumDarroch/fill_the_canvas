class CanvasEditor

  def create_canvas(m, n)
    if m > 250 || n > 250
      fail 'Maximum canvas size is 250 x 250'
    elsif m < 1
      fail 'Minimum canvas size is 1 x 1'
    else
      new_canvas = []
      column = []
      m.times { column << 'O' }
      n.times { new_canvas << column }
    end
    return new_canvas
  end

end
