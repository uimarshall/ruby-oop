require './lib/enumerables'

describe Enumerable do
  let(:my_array) { [*1..5]}

  describe '#my_each' do
    it 'Prints back each items of array' do
      expect(my_array.my_each { |x| x }).to eq([1, 2, 3, 4, 5])
    end

    it 'It gives Enumerable when no block is given' do
      expect((1..10).my_each).to be_a Enumerable
    end
  end

  describe '#my_each_with_index' do
    it 'Prints each item index in array' do
      expect(my_array.my_each_with_index { |x| x }).to eq([1, 2, 3, 4, 5])
    end

    it 'It gives enumerable when no block is gives' do
      expect((1..10).my_each_with_index).to be_a Enumerable
    end

    it 'Checking is our my_each_with_index working the same as original each_with_index' do
      expect((1..10).my_each_with_index { |x, y| }).to eq((1..10).each { |x, y| })
    end
  end

  describe '#my_select' do
    it 'Select items from array that covers given condition' do
      expect(my_array.my_select { |x| x.even? }).to eq([2, 4])
    end

    it 'It gives enumerable when no block is given' do
      expect(my_array.my_select).to be_a Enumerable
    end

    it 'Compairs my_select to select is it working the same way' do
      expect(my_array.my_select { |x| x.even? }).to eq(my_array.select { |x| x.even? })
    end
  end

  describe '#my_all?' do
    it 'Return false if given condition is true for all elements' do
      expect(my_array.my_all? { |x| x.odd? }).to eq(false)
    end

    it 'Checking all numbers in array are they integers' do
      expect(my_array.my_all? { |x| x.integer? }).to eq(true)
    end

    it 'Check all numbers type in array are string' do
      expect(my_array.my_all? { |x| x == x.to_s }).to eq(false)
    end

    it 'Checking block parameters condition with my_all ' do
      expect([true, true].my_all? { |x| x }).to eq(true)
    end
  end

  describe '#my_any?' do
    it 'Return true if any of the item cover given condition' do
      expect(my_array.my_any? { |x| x.odd? }).to eq(true)
    end

    # it 'Compairing if any of given perameters from object is a integer' do
    #   expect(['44', '55', true].my_any?(Integer)).to eq(false)
    # end
  end

  describe '#my_none?' do
    it 'Return true if all items are not integer' do
      expect(my_array.my_none? { |x| x.class != Integer }).to eq(true)
    end

    it 'Checking if none of given parameters is integers' do
      expect(%w[44 55].my_none?(Integer)).to eq(true)
    end
  end

  describe '#my_count?' do
    it 'Count the items of the given array' do
      expect(my_array.my_count { |x| x }).to eq(5)
    end

    it 'Count elements in array' do
      expect([5, 5].my_count { |x| x }).to eq(2)
    end

    it 'Count a value in array with given block' do
      expect([14, 2].my_count { |x| x.even? }).to eq(2)
    end

    it 'Count elements of array on given condition' do
      expect([14, 2, 5, 7].my_count { |x| x > 4 }).to eq(3)
    end

    it 'Count sum of given parameters in array' do
      expect(['dfdfdf', 'sdsdsdsd', 2, 5, 8].my_count).to eq(5)
    end
  end

  describe '#my_map' do
    it 'Returns a new array with the result of the given condition' do
      expect(my_array.my_map { |x| x * x }).to eq([1, 4, 9, 16, 25])
    end

    it 'It returns Enumerable when no block is given' do
      expect(my_array.my_map).to be_a Enumerable
    end

    it 'Iterates through array and returns false if number is not equal to 5' do
      expect(my_array.my_map { |x| x == 5 }).to eq([false, false, false, false, true])
    end
  end

  describe '#my_inject' do
    it 'Returns sum of all numbers and multiples by given value' do
      expect(my_array.my_inject(3) { |x, y| x * y }).to eq(360)
    end
  end

  it 'Iterates through array by doing substraction for each element' do
    expect(my_array.my_inject { |x, y| x - y }).to eq(-13)
  end
end
# rubocop:enable Style/SymbolProc