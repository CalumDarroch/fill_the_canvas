class CanvasEditor

  def create_canvas(m, n)
    if m > 250 || n > 250
      fail 'Maximum canvas size is 250 x 250'
    else
      new_canvas = []
      column = []
      m.times { column << 'O' }
      n.times { new_canvas << column }
    end
    return new_canvas
  end

end
