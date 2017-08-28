class SumOfMultiples
  attr_reader :multiples

  def initialize(*multiples)
    @multiples = multiples
  end

  def to(upper_bound)
    numbers = (0...upper_bound).to_a
    result = [0]
    numbers.each do |number|
      multiples.each do |multiple|
        result << number if (number % multiple == 0)
      end
    end
    result.uniq.inject(:+)
  end

end


module BookKeeping
  VERSION = 1
end
