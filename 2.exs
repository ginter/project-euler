Code.require_file "fib.exs"

defmodule EvenFibonacciNumbers do
  import Fib

  def sum(limit: limit), do: do_sum(fib(1), 1, limit)

  def do_sum(fibn, _n, limit) when fibn > limit, do: 0
  def do_sum(fibn, n, limit) when rem(fibn, 2) != 0, do: do_sum(fib(n+1), n+1, limit)
  def do_sum(fibn, n, limit), do: fibn + do_sum(fib(n+1),n+1, limit)
end

IO.puts EvenFibonacciNumbers.sum(limit: 4_000_000)
