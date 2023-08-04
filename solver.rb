class Solver
  def factorial(num)
    raise ArgumentError, 'Factorial input must be a non-negative integer' if num.negative?

    return 1 if num.zero?

    result = 1
    (1..num).each { |i| result *= i }
    result
  end

  # def factorial(integer)
  #   raise 'exception error' if integer.negative?

  #   factorial = 1
  #   integer.times do
  #     factorial *= integer
  #     integer -= 1
  #   end
  #   factorial
  # end

  # def reverse(string)
  #   string.reverse
  # end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(num)
    return 'fizzbuzz' if (num % 3).zero? && (num % 5).zero?
    return 'fizz' if (num % 3).zero?
    return 'buzz' if (num % 5).zero?

    # Any other case, return N as a string (e.g. say N is 7 then return "7")
    num.to_s

    # def fizzbuzz(integer)
    # if (integer % 3).zero? && (integer % 5).zero?
    #   'fizzbuzz'

    # elsif (integer % 3).zero?
    #   'fizz'

    # elsif (integer % 5).zero?
    #   'buzz'

    # else
    #   integer.to_s
    end
  end
end
