defmodule Day3 do
  @moduledoc """
  Solutions for https://adventofcode.com/2025/day/3
  """

  def input do
    File.read!("priv/day03.txt")
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
      161

      iex> part1(input())
      174561379

  """
  def part1(input) do
    input
    |> process_input()
  end

  @doc """
  Solutions:

      iex> part2(example_input_2())
      48

      iex> part2(input())
      106921067

  """
  def part2(input) do
    input
    |> process_input()
  end
end
