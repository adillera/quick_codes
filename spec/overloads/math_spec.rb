require 'spec_helper'

describe Math do
  describe 'ave' do
    it 'should return the average of an array of numbers' do
      expected = 2

      expect(Math.ave(2,2,2,2,2)).to eq expected
    end

    it 'should return false if array is blank' do
      expect(Math.ave()).to be_falsy
    end
  end

  describe 'stdevp' do
    it 'should return the correct population standard deviation' do
      expected = 2.983 # Rounded to 3 decimal places

      expect(Math.stdevp(9, 2, 5, 4, 12, 7, 8, 11, 9, 3, 7, 4, 12, 5, 4, 10, 9, 6, 9, 4).round(3)).to eq expected
    end

    it 'should return false if array is blank' do
      expect(Math.stdevp).to be_falsy
    end
  end
end
