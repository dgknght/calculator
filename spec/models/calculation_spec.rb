require 'rails_helper'

RSpec.describe Calculation do
  describe '#perform' do
    context 'given "1 + 1"' do
      it 'returns 2' do
        calculation = Calculation.new input: '1+1'
        expect(calculation.perform).to eq 2
      end
    end
  end
end
