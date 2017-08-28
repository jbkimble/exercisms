class Complement

  def self.of_dna(nucleotide)
    rna = []
    nucleotide.each_char do |nuc|
      if nuc == "C"
        rna << "G"
      elsif nuc == "G"
        rna << "C"
      elsif nuc == "T"
        rna << "A"
      elsif nuc == "A"
        rna << "U"
      else
        return ""
      end
    end
    rna.join
  end

end

module BookKeeping
  VERSION = 4
end
