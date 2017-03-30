defmodule Mumble do
  @moduledoc """
  Documentation for Mumble.
  """

  @doc """
  Description:

  This time no story, no theory. The examples below show you how to write function accum:

  Examples:

  Mumbling.accum "abcd"    # "A-Bb-Ccc-Dddd"
  Mumbling.accum "RqaEzty" # "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
  Mumbling.accum "cwAt"    # "C-Ww-Aaa-Tttt"
  The parameter of accum is a string which includes only letters from a..z and A..Z.
  """

  def accum(s) do
    accum_build(String.graphemes(s), 0)
  end

  def accum_build(s, depth) when (length(s) == 1) do
    String.capitalize(String.duplicate(to_string(s), depth+1))
  end

  def accum_build([head | tail], depth) do
    Enum.join([String.capitalize(String.duplicate(to_string(head), depth+1)), accum_build(tail, depth + 1)], "-")
  end
end
