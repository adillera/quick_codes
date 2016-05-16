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

  describe 'merge_hashes_using_key' do
    it 'should return an array of merged hashes based on the key supplied' do
      expected = [{ a: 1, b: 2, c: 3, d: 4, e: 5 }]
      values = [{ a: 1, b: 2, c: 3 }, { a: 1, d: 4, e: 5 }]

      expect(values.merge_hashes_using_key(:a)).to eq expected
    end

    it 'should return an array with only the hashes with the same key value merged' do
      expected = [{ a: 1, b: 2, c: 3, d: 4, e: 5 }, { b: 1, c: 2 }]
      values = [{ a: 1, b: 2, c: 3 }, { a: 1, d: 4, e: 5 }, { b: 1, c: 2 }]

      expect(values.merge_hashes_using_key(:a)).to eq expected
    end

    it 'should return false if array is blank' do
      expect([].merge_hashes_using_key(:key)).to be_falsy
    end
  end
end
