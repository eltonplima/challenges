defmodule Fizzbuzz do
  @divisors %{"3": "fizz", "5": "buzz"}

  defp replace_if_divisible(n, divisors) do
    Enum.reduce(Map.keys(divisors), [], fn key, acc ->
      divisor = String.to_integer(Atom.to_string(key))

      if rem(n, divisor) == 0 do
        word = Map.fetch!(divisors, key)
        [word | acc]
      else
        acc
      end
    end)
    |> Enum.reverse()
  end

  def fizzbuzz(until, divisors \\ @divisors) do
    Enum.reduce(1..until, [], fn n, acc ->
      word = replace_if_divisible(n, divisors) |> Enum.join()

      if String.length(word) == 0 do
        [n | acc]
      else
        [word | acc]
      end
    end)
    |> Enum.reverse()
  end
end
