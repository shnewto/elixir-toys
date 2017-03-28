defmodule Boolean do
  @moduledoc """
  Documentation for Boolean.
  """

  @doc """
  Description:

  Complete the bool_to_word (Javascript: boolToWord ) method.

  Given: a boolean value

  Return: a 'Yes' string for true and a 'No' string for false
  """
  def boolToWord(b) do
    case b do 
      true -> "Yes"
      false -> "No"
    end
  end
end
