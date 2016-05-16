require 'spec_helper'

describe Array do
  describe 'stdevp' do
    it 'should return the correct population standard deviation' do
      expected = 2.983 # Rounded to 3 decimal places
      values = [9, 2, 5, 4, 12, 7, 8, 11, 9, 3, 7, 4, 12, 5, 4, 10, 9, 6, 9, 4]

      expect(values.stdevp.round(3)).to eq expected
    end

    it 'should return false if array is blank' do
      expect([].stdevp).to be_falsy
    end
  end
end
