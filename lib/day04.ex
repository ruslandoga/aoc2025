defmodule Day4 do
  @moduledoc """
  Solutions for https://adventofcode.com/2025/day/4
  """

  def input do
    File.stream!("priv/day04.txt")
  end

  def example_input do
    []
  end

  defp process_input(lines) do
    lines
  end

  @doc """
  Solutions:

      iex> part1(example_input())
      18

      iex> part1(input())
      2545

  """
  def part1(input \\ example_input()) do
    input
    |> process_input()
  end

  @doc """
  Solutions:

      iex> part2(example_input())
      9

      iex> part2(input())
      1886

  """
  def part2(input) do
    input
    |> process_input()
  end
end
