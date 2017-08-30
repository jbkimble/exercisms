require 'pry'

class Series
  attr_accessor :series

  def initialize(series)
    @series = series
  end

  def slices(size)
    raise_argument_error if series.length < size
    series_array = series.split(//)
    count = 0
    final = []
    series.each_char do |char|
      a_slice = series[count..(count+size-1)]
      final << a_slice if a_slice.length == size
      count += 1
    end
    final
  end

  def raise_argument_error
    raise ArgumentError, 'Slice size is longer than string size'
  end

end
