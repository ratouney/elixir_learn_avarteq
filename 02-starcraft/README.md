# Modules, tuples, pattern matching and return values #

> Moving forward, we will present modules, tuples and return values. We will also introduce pattern matching.

## Modules ##

### What is a Module? ###

Modules are kind of like `namespaces` in C++.
They allow you to separate functions one from another. Let's take an example:

Would you play Starcraft, there are 3 races.
You could decide to separate each race into its own module. You would then have:
* module Zerg
* module Terran
* module Protoss

### How to declare a module? ###

```
  defmodule MyModule do
    # here is my code
  end
```

You will notice that a Module starts with a Capital letter and is written in `CamelCase`.

## Tuples ##

While list are closer to chained list in C, tuples are a successions of bits. Like a `char*`. Except we don't have to `malloc` it... ;)

### How to declare a tuple? ###

Tuples are declared with brace bracket `{}`.
Do not mix with the maps, `%{}`.

You can store any value you want in a tuple.

```
  my_tuple = { value1, value2 }
```

### How can I access my data? ###

```
  # my_tuple        = { :ok, 42 }
  { status, value } = my_tuple

  # status = :ok
  # value  = 42
```

This is a pattern match. You will find out more about it below.
If you want to know more about tuple, and how they differenciate with the lists, please [see the documention]("http://elixir-lang.org/getting-started/basic-types.html#tuples").

## Pattern matching ##

Pattern matching is a functionality you will often see in Elixir. I suggest you go see [ the full documentation here ]("http://elixir-lang.org/getting-started/pattern-matching.html").
Here I will only give you some examples.

You already saw a basic pattern match:

```
  # my_tuple        = { :ok, 42 }
  { status, value } = my_tuple

  # status = :ok
  # value  = 42
```

let's admit our function is something of the following:
```
  def my_function(_args) do
    # do some stuff
    if stuff_work do
      { :ok, stuff }
    else
      {:error, reason }
    end
  end
```

If I write something like:

```
  { :ok, value } = my_function(args)
```
In this case, I assume I will receive a valid answer (`:ok`).
In case I receive something else (ie. `:error`), Elixir will raise an error, you can then catch.

Why is it cool?
You don't have to look after your function if, yes or no, your value is valid. `my_function/1` **must** return `:ok` to get to the next line of code. And you can admit that if you get an `:ok`, the work inside `my_function/1` went well and you received an usable `value`.


## Return values ##

On Elixir, there is no `return` keyword. The result of the last operation of the last line in a function will be returned.
For example:
```
  def add(a, b) do
    a + b
  end
```
will return the result of `a + b`.


Sometimes, you need to handle "heavy" operations. Or you just want to know if the work in your function went well.
Let's take an example. I want to `create` a user. I will have many dependencies and many things can go wrong: bad params, database error, etc. So if the operation goes smoothly, I will receive an `{:ok, user}` if they went south, I expect `{:error, reasons}`.

Except sometimes, I don't care if things go well or not. I just want my new user, because I want to use it directly for example.

The solution is to create two (2) functions: one with and one without `!`

```
  def create_user(params) do
    # do stuff
    if ok do
      {:ok, user}
    else
      {:error, reason}
    end
  end

  def create_user!(params) do
    {s, user} = create_user(params)

    if s == :ok do
      user
    else
      nil
    end
  end
```

_This is a basic example. Can do better. :)_
