defmodule PrimeFactor do
  def largest(n), do: List.last all(n)

  def all(n) when not is_integer(n) or n < 2, do: []
  def all(n), do: all(n, 2, [])

  def all(n, div, factors) when div > div(n,2), do: factors ++ [n]
  def all(n, div, factors) when rem(n,div) == 0, do: factors ++ [div] ++ all(div(n,div))
  def all(n, div, factors), do: all(n, div+1, factors)
end

IO.puts inspect PrimeFactor.largest(600_851_475_143)
