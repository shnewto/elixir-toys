defmodule PotatoesTest do

  use ExUnit.Case

  def dotest(p0, w0, p1, exp) do 
      assert Potatoes.potatoes(p0, w0, p1) == exp
  end

  test "Basic tests" do
      dotest 99, 100, 98, 50
      dotest 82, 127, 80, 114
  end
  
end
