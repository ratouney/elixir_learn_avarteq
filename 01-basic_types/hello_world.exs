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


  def hello() do
    "Hello, World!"
  end
  @doc """
  Takes a list of Strings and return greatings to all of them in one sentence.
  Hint: Look at Enum: https://hexdocs.pm/elixir/Enum.html
  """
  @spec hello(List.t) :: List.t
  def hello(list) when is_list(list) do
    x = "Hello"
    Enum.each(list, fn(s) -> x = x <> ", " <> s end)
    x = x <> "!"
    x
  end

  @doc """
  Greets the user by name, or by saying "Hello, World!"
  if no name is given.
  """
  @spec hello(String.t) :: String.t
  def hello(name) do
    "Hello, " <> name <> "!"
  end

  def first_name(map) do
    map.first_name
  end

  @doc """
  Hint: https://hexdocs.pm/elixir/String.html#summary
  """
  def first_name_capitalized(map) do
    String.capitalize(map.first_name)
  end

  def full_name(map) do
    String.capitalize(map.first_name) <> " " <> String.capitalize(map.last_name)
  end
end
