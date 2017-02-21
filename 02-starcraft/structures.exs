defmodule Player do
  defstruct id:    0,
    race:          "zerg",
    units:         [],
    defense_bonus: 0,
    attack_bonus:  0
end

defmodule Unit do
  defstruct hp: 0,
    fly:        false,
    damage:     0,
    attack_air: false,
    attack_sol: true,
    player:     %Player{}
end
