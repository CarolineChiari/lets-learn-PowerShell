# Arrays

- [Arrays](#arrays)
  - [Introduction](#introduction)
  - [Creating an array](#creating-an-array)
    - [Using a cmdlet](#using-a-cmdlet)
    - [Using `,`](#using-)
    - [Using `..`](#using--1)
    - [Using `@()`](#using--2)
  - [Array type](#array-type)
  - [Accessing array items](#accessing-array-items)
    - [Accessing the entire array](#accessing-the-entire-array)
    - [Accessing a specific index](#accessing-a-specific-index)
    - [Negative indexes](#negative-indexes)
    - [Array Range](#array-range)
  - [Count](#count)

## Introduction

Arrays are a collection of values, it allows you to store multiple values in one object. Think of it as a list for your groceries, the piece of paper is the array and each item is a element of the array.

## Creating an array

In PowerShell, there are multiple ways to create an array

### Using a cmdlet

Certain cmdlets already return arrays, such as `Get-Process` for example.

``` PowerShell
    $Processes = Get-Process
```

### Using `,`

You can simply create an array of elements by separating items with a `,` when assigning a value to a variable.

``` PowerShell
    $MyArray = 1,2,3
    $MyArray
    # Result:
    # 1
    # 2
    # 3
```

If you want to use `,` to create an array containing a single item, just start the list with `,` as such:

``` PowerShell
    $MyArray = ,1
    $MyArray
    # Result:
    # 1
```

### Using `..`

If you want to create an array of numbers within a certain range, you can use the range operator (`..`). For example:

``` PowerShell
$MyVariable = 5..8
$MyVariable
# Result:
# 5
# 6
# 7
# 8
```

### Using `@()`

You can also create an empty array using the array sub expression operator`@()`. This operator will create an array from any expression inside it, even if there is nothing.

``` PowerShell
# Creating an empty array
$MyEmptyArray = @()

# Creating an array with something in it
$MyHelloWorldArray = @('Hello world!')

# Creating an array with multiple elements
$MyArray = @('item1','item2','item3')

```

## Array type

By default all arrays created are of type **`System.Object[]`**. You can check the type of an object using `.GetType()` as such:

``` PowerShell
$MyVariable.GetType()
```

You can force the array to be of a certain type by casting it, as such:

``` PowerShell
[int32[]]$MyIntArray = 1..10
```

## Accessing array items

To access array elements, there are a few ways:

### Accessing the entire array

To access the entire array, you can just call the variable and it will return the entire array:

``` PowerShell
$a = 1..5
$a
# Result
# 1
# 2
# 3
# 4
# 5
```

### Accessing a specific index

To access a specific index, you can can specify the index in brackets like this:

``` PowerShell
$a = 1..5
$a[1]
# Result
# 2
```

> **Note**: PowerShell arrays start at index `0`. meaning that the first element of the above array would be `$a[0]`

### Negative indexes

PowerShell allows for negative indexes. A negative index means that the array will be read in reverse. For example `-1` is the last index, `-2` is the next to last index and so on and so forth.

``` PowerShell
$a = 1..5
$a[-1]
# Result
# 5
```

### Array Range

With PowerShell, you can also access a subset of an array by using the range operator as such:

``` PowerShell
$a = 1..100
$a[9..14]
# Result
# 10
# 11
# 12
# 13
# 14
# 15
```

## Count

To know the length of an array, use `.count`, this will return the number of items in an array.

``` PowerShell
$a = 1..100
$a.count
# Result
# 100
```

