defmodule Build do
    def create(player, unit) do
        %{:id => id, :race => race } = player
        if to_string(unit) == "zergling" do
            Zerg.unit(race)
        else
            Terran.unit(race)
        end
    end
    def create!(player, unit) do
        if to_string(unit) == "zergling" do
            Setup.zergling
        else
            Setup.marine
        end
    end
end

defmodule Zerg do
    def unit(race) do
        if race == "zerg" do
            {:ok, Setup.zergling}
        else
            {:error, "Player is not a zerg"}
        end
    end
end

defmodule Terran do
    def unit(race) do
        if race == "terran" do
            {:ok, Setup.marine}
        else
            {:error, "Player is not a terran"}
        end
    end
end