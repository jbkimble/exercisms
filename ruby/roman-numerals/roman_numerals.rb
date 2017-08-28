require 'pry'

class Fixnum
  def to_roman
    remainder = self
    roman_numeral = ""

    [10, 100, 1000, 10000].each do |place|
      next if remainder == 0
      roman_numeral.prepend(conversion_chart[convert_place(remainder, place)])
      remainder -= convert_place(remainder, place)
    end
    
    roman_numeral
  end

  def convert_place(remainder, place)
    remainder % place
  end

  def conversion_chart
    {
      0 => '',
      1 => 'I',
      2 => 'II',
      3 => 'III',
      4 => 'IV',
      5 => 'V',
      6 => 'VI',
      7 => 'VII',
      8 => 'VIII',
      9 => 'IX',
      10 => 'X',
      20 => 'XX',
      30 => 'XXX',
      40 => 'XL',
      50 => 'L',
      60 => 'LX',
      70 => 'LXX',
      90 => 'XC',
      100 => 'C',
      400 => 'CD',
      500 => 'D',
      900 => 'CM',
      1000 => 'M',
      2000 => 'MM',
      3000 => 'MMM'
    }
  end
end
