require 'pry'
class Binary
  def self.to_decimal(binary)
    result = []
    binary.split("").reverse.each_with_index do |digit, index|
      raise ArgumentError if digit != "1" && digit != "0"
      (2**index).to_i.times { result << digit.to_i }
    end
    result.inject(:+)
  end
end

module BookKeeping
  VERSION = 3
end
