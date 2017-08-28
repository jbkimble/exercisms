class Array
  def accumulate
    result = []
    self.each {|item| result << yield(item)}
    result
  end

end



module BookKeeping
  VERSION = 1
end
