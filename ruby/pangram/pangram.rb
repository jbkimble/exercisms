class Pangram
  
  def self.pangram?(phrase)
    phrase.downcase.gsub(/[^a-zA-Z]/, '').split("").uniq.sort == ('a'..'z').to_a
  end

end
