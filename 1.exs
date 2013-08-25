defmodule Sum do
  def sum(0), do: 0
  def sum(x) when rem(x,5) != 0 and rem(x,3) != 0, do: sum(x-1)
  def sum(x), do: x + sum(x-1)
end

IO.puts Sum.sum(999)
