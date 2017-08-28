class Grains

  def self.square(number)
    if number < 1 || number > 64
      raise ArgumentError, "Method only takes integers between 1 and 64"
    end
    return 1 if number == 1
    return 2**(number-1)
  end

  def self.total
    18446744073709551615
  end

end

module BookKeeping
  VERSION = 1
end
