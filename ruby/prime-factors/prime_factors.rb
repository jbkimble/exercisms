require 'prime'
require 'pry'

class PrimeFactors
  def self.for(dividend)
    result = []
      Prime.each do |prime|
        break if dividend == 1
        if (dividend % prime) == 0
          until (dividend % prime) != 0
            dividend /= prime
            result << prime
          end
          end
        end
    result
  end

end
