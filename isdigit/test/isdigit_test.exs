defmodule IsDigitTest do
  use ExUnit.Case
  import IsDigit, only: [digit?: 1]

  test "basic cases" do
    # assert digit?("") == false
    # assert digit?("7") == true
    # assert digit?(" ") == false
    # assert digit?("a") == false
    # assert digit?("a5") == false
    # assert digit?("14") == false
    assert digit?("1\n0") == false
  end
end
