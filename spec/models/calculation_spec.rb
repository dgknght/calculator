require 'rails_helper'

RSpec.describe Calculation do
  describe '#perform' do
    context 'given "1 + 1"' do
      it 'returns 2' do
        calculation = Calculation.new input: '1+1'
        expect(calculation.perform).to eq 2
      end
    end

    context 'given "1 + 1 + 1 + 1"' do
      it 'returns 4' do
        calculation = Calculation.new input: '1+1+1+1'
        expect(calculation.perform).to eq 4
      end
    end

    context 'given "5*3+1+6/2+9*100"' do
      it 'returns 919' do
        calculation = Calculation.new input: '5*3+1+6/2+9*100'
        expect(calculation.perform).to eq 919
      end
    end

    context 'given "5*3+1+6/85+9*100"' do
      it 'returns 916.07' do
        calculation = Calculation.new input: '5*3+1+6/85+9*100'
        expect(calculation.perform).to eq 916.07
      end
    end

    context 'given "10/2*5"' do
      it 'returns 25' do
        calculation = Calculation.new input: '10/2*5'
        expect(calculation.perform).to eq 25
      end
    end
  end
end
