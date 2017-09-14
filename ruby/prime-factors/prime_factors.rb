require 'prime'

class PrimeFactors
  def self.for(dividend)
    result = []
    until dividend == 1
      Prime.each do |prime|
        if (dividend % prime) == 0
          until (dividend % prime) != 0 || dividend == prime
            dividend /= prime
            result << prime
          end
        end
      end
    end
    result
    # take remainder and divide it by the first prime number,
      # if it divides evenly, store the number in the results array and
      # continue to divide it by that prime until it no longer divides evenly
    #  if it does not go in evenly take the next prime number and
      # try to divide the remainder by that until it no longer divides evenly
    # until the remainder is equal to 1
  end

  # this only works up until 9
  # Prime.prime_division(dividend).flatten.delete_if {|num| num ==1}

end
