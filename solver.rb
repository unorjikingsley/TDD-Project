class Solver
  def factorial(num)
    raise ArgumentError, 'Factorial input must be a non-negative integer' if n.negative?

    return 1 if num.zero?

    result = 1
    (1..num).each { |i| result *= i }
    result
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(num)
    return 'fizzbuzz' if (num % 3).zero? && (n % 5).zero?
    return 'fizz' if (num % 3).zero?
    return 'buzz' if (num % 5).zero?

    # Any other case, return N as a string (e.g. say N is 7 then return "7")
    num.to_s
  end
end
