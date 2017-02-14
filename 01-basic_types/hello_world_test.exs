Code.load_file("hello_world.exs", __DIR__)

ExUnit.start

defmodule HelloWorldTest do
  use ExUnit.Case

  test "says hello to a list of names" do
    assert HelloWorld.hello(["Bob", "Martine"]) == "Hello, Bob, Martine!"
  end

  test "says hello with no name" do
    assert HelloWorld.hello() == "Hello, World!"
  end

  test "says hello sample name" do
    assert HelloWorld.hello("Alice") == "Hello, Alice!"
  end

  test "says hello other sample name" do
    assert HelloWorld.hello("Bob") == "Hello, Bob!"
  end

  test "returns the first name of a predefined map" do
    map = %{first_name: "john", last_name: "doe"}

    assert HelloWorld.first_name(map) == "john"
  end

  test "returns the first name of a predefined map capitalized" do
    map = %{first_name: "john", last_name: "doe"}

    assert HelloWorld.first_name_capitalized(map) == "John"
  end

  test "returns full name as 'First_name Last_name'" do
    map = %{first_name: "john", last_name: "doe"}

    assert HelloWorld.full_name(map) == "John Doe"
  end
end
