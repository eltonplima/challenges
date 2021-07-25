defmodule FizzbuzzTest do
  use ExUnit.Case

  test "test from 1 to 1" do
    assert Fizzbuzz.fizzbuzz(1) == [1]
  end

  test "test from 1 to 3" do
    assert Fizzbuzz.fizzbuzz(3) == [
             1,
             2,
             "fizz"
           ]
  end

  test "test from 1 to 5" do
    assert Fizzbuzz.fizzbuzz(5) == [
             1,
             2,
             "fizz",
             4,
             "buzz"
           ]
  end

  test "test from 1 to 15" do
    assert Fizzbuzz.fizzbuzz(15) == [
             1,
             2,
             "fizz",
             4,
             "buzz",
             "fizz",
             7,
             8,
             "fizz",
             "buzz",
             11,
             "fizz",
             13,
             14,
             "fizzbuzz"
           ]
  end

  test "test from 1 to 25" do
    assert Fizzbuzz.fizzbuzz(25) == [
             1,
             2,
             "fizz",
             4,
             "buzz",
             "fizz",
             7,
             8,
             "fizz",
             "buzz",
             11,
             "fizz",
             13,
             14,
             "fizzbuzz",
             16,
             17,
             "fizz",
             19,
             "buzz",
             "fizz",
             22,
             23,
             "fizz",
             "buzz"
           ]
  end
end
