require 'pry'
class RunLengthEncoding
  def self.encode(input)
    input_arr = input.split("")
    compressed = ""

    while input_arr.length > 0
      first_char = input_arr.shift
      count = 1

      input_arr.each do |char|
        if first_char == char
          count += 1
        else
          break
        end
      end
      input_arr.shift(count - 1)

      count = "" if count == 1
      compressed << (count.to_s + first_char)
    end
    compressed
  end

  def self.decode(input)
    decompressed = ""
    encoded = input.split("")

    until encoded.length == 0
      first = encoded.shift
      if (first =~ /\d/) != 0
        decompressed << first
      elsif (first =~ /\d/) == 0
        number = first
        number << encoded.shift while (encoded[0] =~ /\d/) == 0
        decompressed << (encoded.shift * number.to_i)
      end
    end
    decompressed
  end
end

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
