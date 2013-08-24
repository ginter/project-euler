defmodule Sum do
  def sum(1000, acc), do: acc
  def sum(x, acc) when rem(x,5) == 0 or rem(x,3) == 0, do: sum(x+1, acc+x)
  def sum(x, acc), do: sum(x+1, acc)
end

IO.puts Sum.sum(0, 0)
