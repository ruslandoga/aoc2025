defmodule Day3 do
  @moduledoc """
  Solutions for https://adventofcode.com/2025/day/3
  """

  def input do
    File.stream!("priv/day03.txt")
  end

  def example_input do
    []
  end

  defp process_input(input) do
    input
    |> Enum.map(&Function.identity/1)
  end

  @doc """
  Solutions:

      iex> part1(example_input())
      []

      iex> part1(input())
      []

  """
  def part1(input) do
    input
    |> process_input()
  end

  @doc """
  Solutions:

      iex> part2(example_input())
      []

      iex> part2(input())
      []

  """
  def part2(input) do
    input
    |> process_input()
  end
end
