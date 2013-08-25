defmodule SumSquareDifference do
  def call(n), do: square_of_sum(n) - sum_of_squares(n)

  defp square_of_sum(n), do: do_square_of_sum(n, 0)
  defp do_square_of_sum(0, acc), do: trunc :math.pow(acc, 2)
  defp do_square_of_sum(n, acc), do: do_square_of_sum(n-1, n + acc)

  defp sum_of_squares(n), do: do_sum_of_squares(n, 0)
  defp do_sum_of_squares(0, acc), do: trunc acc
  defp do_sum_of_squares(n, acc), do: do_sum_of_squares(n-1, :math.pow(n, 2) + acc)
end

IO.puts SumSquareDifference.call(100)
