defmodule Challenge do

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
