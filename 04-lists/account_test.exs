Code.load_file("account.exs", __DIR__)

ExUnit.start

defmodule AccountTest do
  use ExUnit.Case

  test "list asc" do
    assert Account.sort_asc(list) == [1.0, 3.0, 5.0, 9.5, 13.0]
  end

  test "list desc" do
    assert Account.sort_desc(list) == [13.0, 9.5, 5.0, 3.0, 1.0]
  end

  test "printable list" do
    assert Account.list([1.0]) == ["US$1.0"]
  end

  test "list deposits asc" do
    assert Account.list_deposits(list, :asc) == ["US$1.0", "US$3.0", "US$5.0", "US$9.5", "US$13.0"]
  end

  test "list deposits desc" do
    assert Account.list_deposits(list, :desc) == ["US$13.0", "US$9.5", "US$5.0", "US$3.0", "US$1.0"]
  end

  test "list deposits alone" do
    assert Account.list_deposits(list) == ["US$1.0", "US$3.0", "US$5.0", "US$9.5", "US$13.0"]
  end

  defp list do
    [9.50, 5.0, 13.0, 3.0, 1.0]
  end
end
