class Prime
  def self.nth(n)
    raise ArgumentError, "Please enter a positive integer." if n == 0

    prime_canidate = 2
    primes = []

    until primes.length == n do
      primes << prime_canidate if is_prime?(prime_canidate)
      prime_canidate += 1
    end

    return primes.last
  end

  private

    def self.is_prime?(prime_canidate)
      sqr_root = Math.sqrt(prime_canidate).to_i
      (2..sqr_root).all? { |num| (prime_canidate % num) != 0}
    end

end

module BookKeeping
  VERSION = 1
end
