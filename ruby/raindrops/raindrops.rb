require 'pry'

class Raindrops

  def self.convert(number)
    noise = check_factor("", number)


    if noise == ""
      number.to_s
    else
      noise
    end
  end

  def self.check_factor(noise, number)

    if number%3 == 0
      noise += "Pling"
    end

    if number%5 == 0
      noise += "Plang"
    end

    if number%7 == 0
      noise += "Plong"
    end

    noise

  end

end

module BookKeeping
  VERSION = 2
end
