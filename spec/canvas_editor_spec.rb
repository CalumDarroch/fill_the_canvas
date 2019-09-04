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
      expect { subject.create_canvas(1, 251) }.to raise_error('Maximum canvas size is 250 x 250')
    end

    it 'returns an error if you enter a size lower than 1 in either axis' do
      expect { subject.create_canvas(0, 20) }.to raise_error('Minimum canvas size is 1 x 1')
      expect { subject.create_canvas(20, -3) }.to raise_error('Minimum canvas size is 1 x 1')
    end

    it 'stores the new canvas as an instance variable on the class' do
      expect(subject.canvas).to eq(nil)
      subject.create_canvas(1, 1)
      expect(subject.canvas).to eq([['O']])
      subject.create_canvas(2, 2)
      expect(subject.canvas).to eq([['O', 'O'], ['O', 'O']])
    end
  end

  describe '#color_pixel' do
    it 'changes the color of a designated pixel' do
      subject.create_canvas(1, 1)
      expect(subject.color_pixel(1, 1, 'C')).to eq([['C']])
    end
  end

end
