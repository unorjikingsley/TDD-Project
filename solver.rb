class Solver
  def factorial(n)
    raise ArgumentError, "Factorial input must be a non-negative integer" if n.negative?

    return 1 if n.zero?

    result = 1
    (1..n).each { |i| result *= i }
    result
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(n)
    return "fizzbuzz" if n % 3 == 0 && n % 5 == 0
    return "fizz" if n % 3 == 0
    return "buzz" if n % 5 == 0

    # Any other case, return N as a string (e.g. say N is 7 then return "7")
    n.to_s
  end
end