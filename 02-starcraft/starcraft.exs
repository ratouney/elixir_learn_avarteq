defmodule Setup do
  def player1,  do: %Player{ id: 1,         race: "terran" }
  def player2,  do: %Player{ id: 2,         race: "zerg" }
  def marine,   do: %Unit{ player: player1, hp: 40, damage: 10, attack_air: true }
  def zergling, do: %Unit{ player: player2, hp: 20, damage: 8, attack_air: true }
end

defmodule Build do
    def create(player, unit) do
        if to_string(unit) == "marine" do
            if player.race == "terran" do
                {:ok, Setup.marine}
            else
                {:error, "Player is not a terran"}
            end
        else
            if player.race == "zerg" do
               {:ok, Setup.zergling}
            else
                {:error, "Player is not a zerg"}
            end
        end
    end
    def create!(player, unit) do
        {status, data} = create(player, unit)

        if status == :ok do
            data
        else
            nil
        end
    end
end