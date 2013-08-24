defmodule Fib do
  def fib(0), do: 1
  def fib(1), do: 1
  def fib(n), do: fib(n-1) + fib(n-2)

  def sum(n, acc) do
    fibn = fib(n)
    if fibn > 4_000_000 do
      acc
    else
      if rem(fibn, 2) == 0, do: sum(n+1, acc+fibn), else: sum(n+1, acc)
    end
  end
end

IO.puts Fib.sum(1, 0)
