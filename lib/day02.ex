defmodule Day2 do
  @moduledoc """
  Solutions for https://adventofcode.com/2025/day/2
  """

  def input do
    File.stream!("priv/day02.txt")
  end

  def example_input do
    []
  end

  defp process_input(input) do
    input
  end

  @doc """
  Solutions:

      iex> part1(example_input())
      2

      iex> part1(input())
      390

  """
  def part1(input) do
    input
    |> process_input()
  end

  @doc """
  Solutions:

      iex> part2(example_input())
      4

      iex> part2(input())
      439

  """
  def part2(input) do
    input
    |> process_input()
  end
end
