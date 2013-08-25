defmodule PrimeFactor do
  def largest(n), do: List.last all(n)

  defp all(n) when not is_integer(n) or n < 2, do: []

  defp all(n), do: all(n, 2, [])

  defp all(n, div, factors) when div > div(n,2), do: [n|factors]

  defp all(n, div, factors) when rem(n,div) == 0, do: [div|factors] ++ all(div(n,div))

  defp all(n, div, factors), do: all(n, div+1, factors)
end

IO.puts inspect PrimeFactor.largest(600_851_475_143)
