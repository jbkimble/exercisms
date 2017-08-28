class Sieve
  def initialize(number)
    @number = number
  end

  def primes
    primes = []
    range = (2..@number).to_a

    until range.length == 0
      unmarked_num = range.shift
      primes << unmarked_num

      range.each do |num|
        range.delete(num) if num % unmarked_num == 0
      end
    end
    primes
  end
end
