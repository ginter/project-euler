defmodule Multiples do
  def smallest(upto), do: smallest(upto+1, upto)
  def smallest(n, upto) do
    if evenly_divides_upto?(n, upto), do: n, else: smallest(n+1, upto)
  end

  def evenly_divides_upto?(n, upto) when rem(n, upto) != 0, do: false
  def evenly_divides_upto?(_, upto) when upto == 1, do: true
  def evenly_divides_upto?(n, upto), do: evenly_divides_upto?(n, upto-1)
end

IO.puts Multiples.smallest(20)
