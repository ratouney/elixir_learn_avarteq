defmodule HelloWorld do
  @moduledoc """
  Elixir counts the number of arguments as part of the function name.
  For instance;

  def hello() do
  end

  would be a completely different function from

  def hello(name) do
  end

  Can you find a way to make all the tests pass with just one
  function?

  Hint: look into argument defaults here:
  http://elixir-lang.org/getting-started/modules.html#default-arguments
  """

  @doc """
  Takes a list of Strings and return greatings to all of them in one sentence.
  Hint: Look at Enum: https://hexdocs.pm/elixir/Enum.html
  """
  @spec hello(List.t) :: String.t
  def hello(list) do
  end

  @doc """
  Greets the user by name, or by saying "Hello, World!"
  if no name is given.
  """
  @spec hello(String.t) :: String.t
  def hello(name) do
  end

  def first_name(map) do
  end

  @doc """
  Hint: https://hexdocs.pm/elixir/String.html#summary
  """
  def first_name_capitalized(map) do
  end

  def full_name(map) do
  end
end
