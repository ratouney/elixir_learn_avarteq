# Recursive functions #

> Since `for` loops does not exist in Elixir, how can we go through a list?

## Split the list ##
In Elixir, and other functional languages, it is possible to split the list. When doing so, we would obtain the `head` and the `tail`.

* the `head` is the first item of the list
* the `tail` is the rest of the list

To split a list, we use the con operator: `|`

```
  my_army = [unit1, unit2, unit3, unit4]

  [head | tail] = my_army

  # head = uni1
  # tail = [unit2, unit3, unit4]
```

## What is a recursive function ##
A recursive function is a function that **will invoke itself**.

```
  def i_am_recursive(args) do
    i_am_recursive(args)
  end
```

## Two conditions for recursive functions ##

### The terminating scenario ###

We obviously state an end to our self invocation. Otherwise, we would... infinit loop. <3

### The self-invocation ###
... Makes sense. Right?

```
  def i_am_recursive([]) do # note that I use an empty list []
  end

  def i_am_recursive([head | tail]) do
    i_am_recursive(tail)
  end
```

## Guards ##
Guards can still be used, of course.

## The Pipe operator ##

Like in Unix, it is possible in Elixir to use the Pipe Operator `|>`. The pipe operator gives the result of the left side as first argument of the right side.

In C, for example, you would have this kind of code:
```
  res = a(b(c(d(e(x)))))
```

Of course, this is ugly and unreadable. You would therefore fix it by doing:
```
  var e = e(x)
  var d = d(e)
  var c = c(d)
  var b = b(c)
  var a = a(b)

  return a
```

In elixir, you would do: `x |> e |> d |> c |> b |> a`

A concrate example could be:
```
  def greeting(name) do
    name
    |> greet(%{lang: "us"})
    |> IO.puts
  end

  defp greet(name, %{lang: "us"}), do: "Hello, #{name}!"
  defp greet(name, %{lang: "es"}), do: "Ola, #{name}!"
```

Running `greeting("John")` would output: `Hello, John!`


## List doc ##
If you did not yet read the list doc... Maybe you should.
