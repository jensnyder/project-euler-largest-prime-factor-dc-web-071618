# Enter your object-oriented solution here!
class LargestPrimeFactor
  attr_reader :number

  def initialize(input)
    @number = largest_prime_factor(input)
  end

  def largest_prime_factor(input)
    factors = (1..input).select {|n| input % n == 0}
    prime_factors = factors.select{|n| is_prime(n)}
    prime_factors[prime_factors.length - 1]
  end

  def is_prime(num)
    for x in 2..Math.sqrt(num)
      if (num % x) == 0
        return false
      end
    end
    true
  end

end
