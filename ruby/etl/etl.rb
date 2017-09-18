class ETL

  def self.transform(legacy_score_system)
    new_score_system = Hash.new
    legacy_score_system.each do |score, letters|
      letters.each { |letter| new_score_system[letter.downcase] = score }
    end
    new_score_system
  end

end

module BookKeeping
  VERSION = 1
end
