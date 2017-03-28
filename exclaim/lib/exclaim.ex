defmodule Exclaim do
  @moduledoc """
  Documentation for Exclaim.
  """

  @doc """
  Write function RemoveExclamationMarks which removes all exclamation marks from a given string.
  """
  def remove_exclamation_marks(s) do
    String.replace(s,"!", "")
  end
end
