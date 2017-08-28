class Year

  def self.leap?(year)
    if (year % 100 == 0) && (year % 400 != 0)
      return false
    else
      return true if year % 4 == 0
    end
  end

end

module BookKeeping
  VERSION = 3
end
