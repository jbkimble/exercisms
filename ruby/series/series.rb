# Benchmark rates this solution as ≈ 1/3 slower than my original
# but it is much easier to understand to my eye

class Series
  attr_accessor :series

  def initialize(series)
    @series = series
  end

  def slices(size)
      raise_argument_error if series.length < size
      series_array = series.split(//)

      result = series_array.map.with_index do |char, index|
        a_slice = series_array[index..(index+size-1)].join
        a_slice if a_slice.length == size
      end.compact
  end

  def raise_argument_error
    raise ArgumentError, 'Slice size is longer than string size'
  end

end
