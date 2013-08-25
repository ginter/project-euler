defmodule Sum do
  def sum(x), do: do_sum(x, 0)

  def do_sum(0, acc), do: acc
  def do_sum(x, acc) when rem(x,5) == 0 or rem(x,3) == 0, do: do_sum(x-1, acc+x)
  def do_sum(x, acc), do: do_sum(x-1, acc)
end

IO.puts Sum.sum(999)
