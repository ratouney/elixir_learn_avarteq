Code.load_file("recursiv.exs", __DIR__)

ExUnit.start

defmodule RecursivTest do
  use ExUnit.Case

  test "sum = 42" do
    assert Recursiv.sum([1, 3, 5, 8, 12, 13]) == 42
  end

  test "my_sum = Enum.sum" do
    list = random_list

    assert Recursiv.sum(list) == Enum.sum(list)
  end

  test "count number of item" do
    list = random_list

    assert Recursiv.my_count(list) == Enum.count(list)
  end

  test "my_member?" do
    list = random_list
    item = Enum.take_random(list, 1)

    assert Recursiv.my_member?(list, item) == Enum.member?(list, item)
  end


  defp random_list() do
    x = Enum.random(42..111)
    list = Enum.concat([1..x])
  end
end
