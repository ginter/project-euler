defmodule Fib do
  def sum(limit), do: do_sum(fib(1), 1, limit)

  def do_sum(fibn, _n, limit) when fibn > limit, do: 0
  def do_sum(fibn, n, limit) when rem(fibn, 2) != 0, do: do_sum(fib(n+1), n+1, limit)
  def do_sum(fibn, n, limit), do: fibn + do_sum(fib(n+1),n+1, limit)

  def fib(0), do: 1
  def fib(1), do: 1
  def fib(n), do: fib(n-1) + fib(n-2)
end

IO.puts Fib.sum(4_000_000)
