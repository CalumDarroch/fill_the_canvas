require 'canvas_editor'

describe CanvasEditor do

  describe '#create_canvas' do
    it 'returns an empty canvas of the required size' do
      expect(subject.create_canvas(1, 1)).to eq([[0]])
    end
  end

end
