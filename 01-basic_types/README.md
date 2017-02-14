# Basic types #

> This course present the follwing types: String, List and Map.

## String ##

### What is a String? ###

Like in C, and many other languages, a "string" is a chain of characters.

### How do I declare a String? ###

```
str = "this is my string"
```
In opposition from C, where you need to explicitely state the type of your variable, in Elixir you only 'name' it and assign a value to it.
Please, note that I am using the double quote (`"`) instead of the simple one (`'`). In Elixir, it does make a difference. I let you google it if you want to know more about it.

### How do I concate two strings? ###

```
  str1 = "Hello"
  str2 = " world!"

  str1 <> str2 # == "Hello world!"
```

`#` is used to comment what is coming after

### How can I output results? ###

```
  IO.puts "my string"
```

## List ##

### What is a list? ###
It is a suit of datas. It can be `:atom`, `charlist`, `string`, ...

### How to declare a List? ###

```
  list = [item1, item2, ...]
```

### How can I output a list? ###
```
  IO.inspect list # list is... a list
```


## Map ##

### What is a map? ###
It is close to a structure in C.
It is a succession of keys and values.

### How to declare a map? ###

```
  my_map = %{key: "value", "key2" => 1}
```


You know everything.
Enjoy the exercises! :D

**Reminder: Use `elixir hello_world_test.exs` to run the tests.**


_Note: The first three exercises from this chapter come from exercism._
