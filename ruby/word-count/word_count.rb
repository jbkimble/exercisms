require 'pry'
class Phrase
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    final = Hash.new
    cleaned_phrase = phrase.downcase.gsub(/[^A-Za-z0-9\s,']/i, '')
    split_phrase = cleaned_phrase.split(/[\s.,]+/)

    split_phrase.each do |aword|
      if aword[0] == "'" && aword[-1]="'" then
        aword[0] = ""
        aword[-1] = ""
      end
    end

    uniq_words = split_phrase.uniq
    uniq_words.each do |uniq|
      count = 0
      split_phrase.each do |word|
        count += 1 if uniq == word
      end
      final[uniq] = count
    end
    final
  end

end

module BookKeeping
  VERSION = 1
end
