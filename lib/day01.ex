defmodule Day1 do
  @moduledoc """
  Solutions for https://adventofcode.com/2025/day/1
  """

  def input do
    File.stream!("priv/day01.txt")
  end

  def example_input do
    """
    L68
    L30
    R48
    L5
    R60
    L55
    L1
    L99
    R14
    L82
    """
    |> String.split("\n", trim: true)
  end

  defp process_input(input) do
    input
    |> Enum.map(fn line ->
      case String.trim(line) do
        "L" <> dist -> -String.to_integer(dist)
        "R" <> dist -> String.to_integer(dist)
      end
    end)
  end

  @doc """
  Solutions:

      iex> part1(example_input())
      3

      iex> part1(input())
      1034

  """
  def part1(input \\ input()) do
    input
    |> process_input()
    |> Enum.scan(50, fn rot, pos ->
      pos = rem(pos + rot, 100)
      if pos < 0, do: pos + 100, else: pos
    end)
    |> Enum.count(fn pos -> pos == 0 end)
  end

  @doc """
  Solutions:

      iex> part2(example_input())
      6

      iex> part2(input())
      6166

  """
  def part2(input) do
    input
    |> process_input()
    |> rotate(50, _count = 0)
  end

  defp rotate([move | moves], pos, count) do
    {pos, count} = _rotate(move, pos, count)
    rotate(moves, pos, count)
  end

  defp rotate([], _pos, count) do
    count
  end

  defp _rotate(move, pos, count) when move > 0 do
    pos = rem(pos + 1, 100)
    count = if pos == 0, do: count + 1, else: count
    _rotate(move - 1, pos, count)
  end

  defp _rotate(move, pos, count) when move < 0 do
    pos = rem(pos - 1, 100)
    pos = if pos < 0, do: pos + 100, else: pos
    count = if pos == 0, do: count + 1, else: count
    _rotate(move + 1, pos, count)
  end

  defp _rotate(0, pos, count) do
    {pos, count}
  end
end
