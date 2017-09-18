class Array
  def keep
    reduce([]) do |result, element|
      yield(element) ? result << element : result
    end
  end

  def discard
    result = []
    each do |element|
      result << element if !yield(element)
    end
    result
  end
end
