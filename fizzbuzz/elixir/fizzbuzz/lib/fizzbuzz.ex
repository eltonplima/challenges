defmodule Fizzbuzz do
  @divisors %{"3": "fizz", "5": "buzz"}

  defp check(n) do
    Enum.reduce(Map.keys(@divisors), [], fn key, acc ->
      divisor = String.to_integer(Atom.to_string(key))

      if rem(n, divisor) == 0 do
        word = Map.fetch!(@divisors, key)
        [word | acc]
      else
        acc
      end
    end)
    |> Enum.reverse()
  end

  def fizzbuzz(of) do
    Enum.reduce(1..of, [], fn n, acc ->
      word =
        check(n)
        |> List.flatten()
        |> Enum.join()

      case String.length(word) do
        0 ->
          [n | acc]

        _ ->
          [word | acc]
      end
    end)
    |> Enum.reverse()
  end
end
