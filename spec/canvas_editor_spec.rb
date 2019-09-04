require 'canvas_editor'

describe CanvasEditor do

  describe '#create_canvas' do
    it 'returns an empty canvas of the required size' do
      expect(subject.create_canvas(1, 1)).to eq([['O']])
      expect(subject.create_canvas(2, 2)).to eq([['O', 'O'], ['O', 'O']])
      expect(subject.create_canvas(5, 5)).to eq([ ['O', 'O', 'O', 'O', 'O'],
                                                  ['O', 'O', 'O', 'O', 'O'],
                                                  ['O', 'O', 'O', 'O', 'O'],
                                                  ['O', 'O', 'O', 'O', 'O'],
                                                  ['O', 'O', 'O', 'O', 'O'] ])
    end

    it 'returns an error if you enter a size greater than 250 in either axis' do
      expect { subject.create_canvas(251, 1) }.to raise_error('Maximum canvas size is 250 x 250')
    end
  end

end
