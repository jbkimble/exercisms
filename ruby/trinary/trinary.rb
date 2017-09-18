class Trinary
  attr_reader :trinary

  def initialize(trinary)
    @trinary = trinary
  end

  def to_decimal
    return 0 if !(trinary =~ /\A[-+]?[0-2]+\z/)
    count = 0
    result = []
    trinary.split('').reverse.each do |num|
      result << (num.to_i*(3**count))
      count += 1
    end
    result.inject(:+)
  end
end


module BookKeeping
  VERSION = 1
end
