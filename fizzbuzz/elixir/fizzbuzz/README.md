# Fizzbuzz

[Fizz buzz is a group word game](https://en.wikipedia.org/wiki/Fizz_buzz) for children to teach them about division.

## How to use

To test the default behaviour launch a new iex session:

```shell
iex -S mix
```

Then execute:

```elixir
iex(1)> FizzBuzz.fizzbuzz(9)                           
[1, 2, "fizz", 4, "buzz", "fizz", 7, 8, "fizz"]

iex(2)> FizzBuzz.fizzbuzz(15)
[1, 2, "fizz", 4, "buzz", "fizz", 7, 8, "fizz", "buzz", 11, "fizz", 13, 14, "fizzbuzz"]
```

The `FizzBuzz.fizzbuzz` function accept a custom map with the divisor, and the word associated with it:

```elixir
iex(1)> divisors=%{"1": "foo", "2": "bar", "3": "bazz"}

iex(2)> FizzBuzz.fizzbuzz(9, divisors) 
["foo", "foobar", "foobazz", "foobar", "foo", "foobarbazz", "foo", "foobar",
 "foobazz"]

iex(3)> FizzBuzz.fizzbuzz(15, divisors)                
["foo", "foobar", "foobazz", "foobar", "foo", "foobarbazz", "foo", "foobar",
 "foobazz", "foobar", "foo", "foobarbazz", "foo", "foobar", "foobazz"]
```
