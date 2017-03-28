defmodule BooleanTest do
  use ExUnit.Case

  test "some test description" do
    assert Boolean.boolToWord(true) == "Yes"
    assert Boolean.boolToWord(false) == "No"
  end
end
