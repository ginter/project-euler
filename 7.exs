defmodule Prime do
  def get_prime(n), do: do_get_prime(2, 0, n)
  defp do_get_prime(number, current_count, target_count) when current_count == target_count do
    number-1
  end
  defp do_get_prime(number, current_count, target_count) do
    if is_prime?(number) do
      do_get_prime(number+1, current_count+1, target_count)
    else
      do_get_prime(number+1, current_count, target_count)
    end
  end

  defp is_prime?(number), do: do_is_prime?(number, 2)
  defp do_is_prime?(number, div) when div > div(number,2), do: true
  defp do_is_prime?(number, div) when rem(number, div) == 0, do: false
  defp do_is_prime?(number, div), do: do_is_prime?(number, div+1)
end

IO.puts Prime.get_prime(10_001)
