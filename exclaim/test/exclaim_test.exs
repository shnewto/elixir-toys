defmodule ExclaimTest do
  use ExUnit.Case
  doctest Exclaim

  test "Basic Tests" do
    assert Exclaim.remove_exclamation_marks("Hello World!") == "Hello World"
    assert Exclaim.remove_exclamation_marks("Hello World!!!") == "Hello World"
    assert Exclaim.remove_exclamation_marks("Hi! Hello!") == "Hi Hello"
    assert Exclaim.remove_exclamation_marks("") == ""
    assert Exclaim.remove_exclamation_marks("Oh, no!!!") == "Oh, no"
  end
end
