# Pattern Matching: what and how?#

> How to remove the `if`s statement from our applications

On the previous set of exercises, I gave a few example.
But after reading code sample, I believe it makes sense to go further into the pattern matching topic.

## The match operator ##

In other languages, the `=` is used as assignment symbole.
For example, saying: `char a = 'a'` in C would mean that the variable `a` has for value `'a'`.

In Elixir, `=` is a **match operator**. Meaning that it will make sure that the _left operation_ **matches** the _right operation_.

So writing: `race = "zerg"` Elixir understands:
_we have a string on right. Let's make the left side variable (race) match.


## Pattern matching: string ##

Let's try to make it clearer:
```
  "I am the " <> kerrigan = "I am the Queen"

  IO.puts kerrigan # == "Queen"
```

Elixir will try to make left side match the right one. Since both sides have `"I am the "`, the remaining part of the string (`"Queen"`) will be matched with `kerrigan`.


```
  "I am the " <> kerrigan = "The Queen is Kerrigan"

  IO.puts kerrigan # ==> MatchError - No match of right hand side value "The Queen is Kerrigan"
```

> Since left side is completely different than right, the matching does not work and `kerrigan` does not exist.


## Pattern matching: Lists  ##

You can also pattern match lists and list items.
```
  [hero, job, damages] = ["Kerrigan", "Queen of the Swarm", 30]

  # hero    == "Kerrigan"
  # job     == "Queen of the Swarm"
  # damages == 30
```


## Replacing `Ifs` with pattern matching ##

In the previous exercises, with the `build/2` function, we have the tendancy to use `if` statements when coming from other languages.
Here is a "cleaner" way to do it in elixir:

```
  def build(player, :marine) do
    # build
  end

  def build(player, :zergling) do
    # build zergling
  end
```

## Pattern matching: maps ##

```
  map = %{name: "Kerrigan", race: "Zerg", role: "Queen"}

  %{:name => name, :race => race, :role => role} = map
  IO.puts name
  IO.puts race
  IO.puts role
```

should output:
```
Kerrigan
Zerg
Queen
```

## Guard clause ##

It is possible to "guard" a function.
A guard will act like an 'if' statement. If the condition is true, what is guard will happen. Otherwise, it will not.

Here is an example:
```
  def can_i_drink?(%{:age => age, :country => country}) when country == "USA" and age >= 21, do: :yes
  def can_i_drink?(%{:age => age, :country => country}) when country != "USA" and age >= 18, do: :yes
  def can_i_drink?(%{:age => _age, :country => _country}), do: :no
```

_Note that as for if statements, the order matters..._
