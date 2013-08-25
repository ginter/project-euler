defmodule Fib do
  def fib(0), do: 1
  def fib(1), do: 1
  def fib(n), do: fib(n-1) + fib(n-2)

  def sum(limit), do: do_sum(1, 0, limit)

  def do_sum(n, acc, limit) do
    fibn = fib(n)
    if fibn > limit do
      acc
    else
      if rem(fibn, 2) == 0, do: do_sum(n+1, acc+fibn, limit), else: do_sum(n+1, acc, limit)
    end
  end
end

IO.puts Fib.sum(4_000_000)
