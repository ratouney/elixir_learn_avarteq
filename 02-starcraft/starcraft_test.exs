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

defmodule Setup do
  def player1,  do: %Player{ id: 1,         race: "terran" }
  def player2,  do: %Player{ id: 2,         race: "zerg" }
  def marine,   do: %Unit{ player: player1, hp: 40, damage: 10, attack_air: true }
  def zergling, do: %Unit{ player: player2, hp: 20, damage: 8, attack_air: true }
end
