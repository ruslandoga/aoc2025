defmodule Day6 do
  @moduledoc """
  Solutions for https://adventofcode.com/2025/day/6
  """

  def input do
    File.read!("priv/day06.txt")
  end

  def example_input do
  end

  def process_input(input) do
    input
  end

  @doc """
  Solutions:

      iex> part1(example_input())
      41

      iex> part1(input())
      5212

  """
  def part1(input \\ example_input()) do
    input
    |> process_input()
  end

  @doc """
  Solutions:

      iex> part2(example_input())
      6

      iex> part2(input())
      1767

  """
  def part2(input \\ example_input()) do
    input
    |> process_input()
  end
end
