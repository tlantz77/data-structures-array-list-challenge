require_relative '../data-structures-fixed-array-challenge/fixed_array.rb'

class ArrayList

  attr_accessor :fixed

  def initialize(size)
    @fixed = FixedArray.new(size)
  end

  def length
    @fixed.arr.length
  end

  def add(element)
    @fixed.arr << element
    @fixed.arr.last
  end

  def get(index)
    @fixed.get(index)
  end

  def set(index, element)
    @fixed.set(index, element)
  end

  def insert(index, element)
    check_bounds(index)
    @fixed.arr.insert(index, element)
  end

  def check_bounds(index)
    raise StandardError, 'Out of Bounds' if index >= @fixed.arr.length
  end

end
