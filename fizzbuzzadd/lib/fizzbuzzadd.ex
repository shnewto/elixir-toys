defmodule Challenge do
  @moduledoc """
  Documentation for FizzBuzzAdd Challenge.
  """

  @doc """
  Description:

  If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

  Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.

  Note: If the number is a multiple of both 3 and 5, only count it once.
  Courtesy of ProjectEuler.net
  """

  def do_sum(n, sum, max) when n >= max do
    sum
  end

  def do_sum(n, sum, max) when rem(n,5) == 0 do
    do_sum(n + 1, sum + n, max)
  end

  def do_sum(n, sum, max) when rem(n,3) == 0 do
    do_sum(n + 1, sum + n, max)
  end

  def do_sum(n, sum, max) do
    do_sum(n + 1, sum, max)
  end

  def solution(number) do
    do_sum(1, 0, number)
  end

end
