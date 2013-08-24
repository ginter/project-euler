defmodule Palindrome do
  def is_palindrome?(string), do: string == String.reverse(string)

  def largest(digits) do
    n = trunc(:math.pow(10, digits))
    largest(n, n, n)
  end
  def largest(x, y, start) when y == 0, do: largest(x-1, start-1, start-1)
  def largest(x, y, start) do
    if is_palindrome?("#{x*y}") do
      largest(x*y, x-1, start-1, start-1)
    else
      largest(x, y-1, start)
    end
  end
  def largest(largest, x, y, start) when x*y > largest do
    if is_palindrome?("#{x*y}") do
      largest(x*y, x-1, start-1, start-1)
    else
      largest(largest, x, y-1, start)
    end
  end
  def largest(largest, x, _, start) when x == 0 or largest > x*start, do: largest
  def largest(largest, x, y, start) when y == 0, do: largest(largest, x, start-1, start-1)
  def largest(largest, x, y, start) when x*y <= largest do
    largest(largest, x-1, start-1, start-1)
  end
end

IO.puts inspect(Palindrome.largest(3))
