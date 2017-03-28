defmodule IsDigit do
  @moduledoc """
  Documentation for IsDigit.
  """

  @doc """
  Implement String#digit? (in Java StringUtils.isDigit(String)), which should return true if given object is a digit (0-9), false otherwise.
  """
  def digit?(s) do
    case Integer.parse(s) do
      :error -> false     
      x when elem(x,0) > 9 -> false
      x when elem(x,1) !== "" -> false
      _x -> true
    end
  end
end
