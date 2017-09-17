require 'prime'

class PrimeFactors

  def self.for(dividend)
    result = []
      Prime.each do |prime|
        break if dividend == 1
        until (dividend % prime) != 0
          dividend /= prime
          result << prime
        end
      end
    result
  end

end
