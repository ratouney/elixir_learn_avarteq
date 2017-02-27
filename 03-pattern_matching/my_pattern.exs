defmodule MyPattern do
    def who_am_i(line) do
        "I am " <> name = line
        name
    end
    def my_weapon(list) when is_list(list) do
        [name, age, period, weapon, city] = list
        weapon
    end
    def my_weapon(nope) do
        "I am unarmed"
    end
    def my_weapon(list, atom) do 
        [useless, alsouseless, weap] = list
        "olo"
    end
    def best_friend(map) do
        %{:age => age, :name => name, :best_friend => bf} = map
        %{:age => useless, :name => usefull, :best_friend => nope} = bf
        to_string(usefull)
    end
end