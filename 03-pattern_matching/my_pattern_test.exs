Code.load_file("my_pattern.exs", __DIR__)

ExUnit.start

defmodule MyPatternTest do
  use ExUnit.Case

  test "I am Brandon." do
    assert MyPattern.who_am_i("I am Brandon") == "Brandon"
  end

  test "I am John." do
    assert MyPattern.who_am_i("I am John") == "John"
  end

  test "I am a random string." do
    name = StringGenerator.string_of_length(16)

    assert MyPattern.who_am_i("I am " <> name) == name
  end

  test "My weapon is: gun" do
    assert MyPattern.my_weapon(["Kerrigan", 21, :year, "gun", "Paris"]) == "gun"
  end

  test "My weapon is: mass" do
    assert MyPattern.my_weapon(["Kerrigan", 21, :year, :mass, "Paris"]) == :mass
  end

  test "I am unarmed" do
    assert MyPattern.my_weapon(["Kerrigan", 21, :year]) == "I am unarmed"
  end

  test "I told you! I am unarmed" do
    assert MyPattern.my_weapon("I am unarmed!") == "I am unarmed"
  end

  test "My weapon type is: a string" do
    assert MyPattern.my_weapon(["Kerrigan", 21, :year, "gun", "Paris"], :type) == :string
  end

  test "My weapon type is: a list" do
    assert MyPattern.my_weapon(["Kerrigan", 21, :month, [:sword, :blade, :gun], "Paris"], :type) == :list
  end

  test "My weapon type is: unknown" do
    assert MyPattern.my_weapon(["Kerrigan", 21, :year], :type) == :unknown
    assert MyPattern.my_weapon(["Kerrigan", 21, 1, 2017, "Paris"], :type) == :unknown
  end

  test "Janine's best friend is Brian" do
    brian = %{age: 18, name: "Brian", best_friend: nil}
    janine = %{age: 18, name: "Janine", best_friend: brian}

    assert MyPattern.best_friend(janine) == "Brian"
  end
end

defmodule StringGenerator do
  @chars "ABCDEFGHIJKLMNOPQRSTUVWXYZ" |> String.split("")

  def string_of_length(length) do
    Enum.reduce((1..length), [], fn (_i, acc) ->
      [Enum.random(@chars) | acc]
    end)
    |> Enum.join("")
  end
end
