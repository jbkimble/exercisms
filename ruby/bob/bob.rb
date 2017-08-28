class Bob
  def self.hey(remark)
    if (remark == remark.upcase) && (remark.count("a-zA-Z") > 0)
      return "Whoa, chill out!"
    elsif remark.rstrip[-1] == "?"
      return "Sure."
    elsif remark.strip.length == 0
      return 'Fine. Be that way!'
    else
      return 'Whatever.'
    end
  end

end


module BookKeeping
  VERSION = 1
end
