require 'pry'

class BeerSong
  def verses(first_verse, last_verse)
    all_verses = []
    (last_verse..first_verse).to_a.reverse.each do |bottle_count|
      all_verses << verse(bottle_count)
    end
    all_verses.join("\n")
  end

  def verse(round)
"#{first_line(round)}\n#{second_line(round)}
"
  end

  def first_line(round)
    if round == 1
      "#{round} bottle of beer on the wall, #{round} bottle of beer."
    elsif round > 1
      "#{round} bottles of beer on the wall, #{round} bottles of beer."
    else
      "No more bottles of beer on the wall, no more bottles of beer."
    end
  end

  def second_line(round)
    if round > 2
      "Take one down and pass it around, #{round-1} bottles of beer on the wall."
    elsif round == 2
      "Take one down and pass it around, #{round-1} bottle of beer on the wall."
    elsif round == 1
      "Take it down and pass it around, no more bottles of beer on the wall."
    else
      "Go to the store and buy some more, 99 bottles of beer on the wall."
    end
  end
end
