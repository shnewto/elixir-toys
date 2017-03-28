defmodule TestCashier do
  use ExUnit.Case
  import Cashier, only: [format_money: 1]

  test "basic tests" do
    assert format_money(39.99) == "$39.99"
    assert format_money(39.90) == "$39.90"
    assert format_money(39.0) == "$39.00"
    assert format_money(0.0) == "$0.00"
    assert format_money(0.5) == "$0.50"
    assert format_money(0.05) == "$0.05"
    assert format_money(0.58) == "$0.58"
  end
  
  test "random tests" do
    0..99 |> Enum.each(fn d ->
      d2 = if d < 10, do: "0#{d}", else: "#{d}"
      int = :random.uniform(1000)
      num = int + d * 0.01
      answer = "$#{int}.#{d2}"
      assert format_money(num) == answer
    end)
  end
end
