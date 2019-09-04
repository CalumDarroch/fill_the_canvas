class CanvasEditor

  def create_canvas(m, n)
    new_canvas = []
    column = []
    n.times { column << 'O' }
    m.times { new_canvas << column }
    return new_canvas
  end

end
