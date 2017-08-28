class Squares
  def initialize(number)
    @number = number
  end

  def square_of_sum
    array_of_numbers.reduce(:+)**2
  end

  def sum_of_squares
    array_of_numbers.reduce { |final, num| final + num**2 }
  end

  def array_of_numbers
    (1..@number).to_a
  end

  def difference
    return 0 if @number == 0
    square_of_sum - sum_of_squares
  end
end
