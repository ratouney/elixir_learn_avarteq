Code.load_file("structures.exs", __DIR__)
Code.load_file("starcraft.exs", __DIR__)

ExUnit.start

defmodule StarcraftTest do
  use ExUnit.Case


  test "returns :ok and a marine" do
    assert Build.create(Setup.player1, :marine) == {:ok, Setup.marine}
  end

  test "returns :ok and a zergling" do
    assert Build.create(Setup.player2, :zergling) == {:ok, Setup.zergling}
  end

  test "returns :error -- player is not a zerg" do
    assert Build.create(Setup.player2, :marine) == {:error, "Player is not a terran"}
  end

  test "returns :error -- player is not a terran" do
    assert Build.create(Setup.player1, :zergling) == {:error, "Player is not a zerg"}
  end

  test "returns a zergling" do
    assert Build.create!(Setup.player2, :zergling) == Setup.zergling
  end

  test "returns a marine" do
    assert Build.create!(Setup.player1, :marine) == Setup.marine
  end

  test "returns nil" do
    assert Build.create!(Setup.player2, :zergling) == Setup.zergling
    assert Build.create!(Setup.player1, :marine) == Setup.marine
  end
end


