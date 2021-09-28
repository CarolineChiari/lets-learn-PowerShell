# Functions

- [Functions](#functions)
  - [Introduction](#introduction)
  - [Basic functions](#basic-functions)
    - [`Param`](#param)
    - [`return`](#return)
    - [A more complicated example](#a-more-complicated-example)

## Introduction

If you have to perform the same actions over and over again and every time it takes a few lines of code to do it, then functions are your friend!

## Basic functions

Creating functions in PowerShell is very simple:

```PowerShell
function <verb>-<noun> {
 <my code>
}
```

So basically, write `function`, give it a name (preferably following the naming convention of `<verb>-<noun>`), open curly brackets `{}` and write your code. And to call it, just write the function name, just like cmdlets.

```PowerShell
function get-ARandomNumberBetween1An100
{
    Get-Random -Minimum 1 -maximum 101
}

get-ARandomNumberBetween1An100
# Result
# 86
```

Now, of course, here we've created a function to replace a single line command, which is OK, but let's see it in action with something bigger, like our dice example from the [conditionals lesson](../Conditionals/conditionals.md)

Here's the scoring rule:

> Roll 1 = 10 points
> Roll 2 = 10 points
> Roll 3 = 1 points
> Roll 4 = 5 points
> Roll 5 = 9 points
> Roll 6 = 6 points
> Roll 7 = 4 points
> Roll 8 = 8 points
> Roll 9 = 9 points
> Roll 10 = 2 points

Here's our code:

```PowerShell
$rolls = 1..10
$total = 0
foreach ($roll in $rolls)
{
    switch ($roll)
    {
        1 {$total+=10}
        2 {$total+=10}
        3 {$total+=1}
        4 {$total+=5}
        5 {$total+=9}
        6 {$total+=6}
        7 {$total+=4}
        8 {$total+=8}
        9 {$total+=9}
        10 {$total+=2}
    }
}
```

Let's make it more user-friendly:

```PowerShell
function Get-RollScore {
    param(
        [int[]]$Rolls
    )
    $total = 0
    foreach ($roll in $Rolls)
    {
        switch ($roll)
        {
            1 {$total+=10}
            2 {$total+=10}
            3 {$total+=1}
            4 {$total+=5}
            5 {$total+=9}
            6 {$total+=6}
            7 {$total+=4}
            8 {$total+=8}
            9 {$total+=9}
            10 {$total+=2}
        }
    }
    return $total
}

$rolls = 1..10
Get-RollScore -Rolls $rolls
# Result
# 64
```

The advantage of the code above is that you can just ignore the function and understand what the code is doing.

> **Note**: Did you notice `param` and `return`?

### `Param`

You've probably noticed in the previous section that I added `param` to the functions. What is that? Well, simply, `param` is a way to specify the function's parameters.
`param` allows you to specify inputs for your functions, making them more versatile.
The param block has the following structure:

``` PowerShell
param(
    [type1]$variable1,
    [type2]$variable2,
    ...
)
```

### `return`

`return` is important and useful. For one, it specifies explicitly what gets returned.

### A more complicated example

Now, what if we want to run a few rolls and not just used numbers 1 through 10?

```PowerShell
function Get-Rolls {
    param (
        [int]$NumberOfRolls = 10 # 10 is the default value now
    )
    $rolls = @()
    for ($i = 0; $i -lt $NumberOfRolls; $i++){
        $rolls+= Get-Random -InputObject @(1..10)
    }
    return $rolls
}
function Get-RollScore {
    param(
        [int[]]$Rolls
    )
    $total = 0
    foreach ($roll in $Rolls)
    {
        switch ($roll)
        {
            1 {$total+=10}
            2 {$total+=10}
            3 {$total+=1}
            4 {$total+=5}
            5 {$total+=9}
            6 {$total+=6}
            7 {$total+=4}
            8 {$total+=8}
            9 {$total+=9}
            10 {$total+=2}
        }
    }
    return $total
}
$Scores = @{}
for ($i = 0; $i -lt 100000; $i++)
{
    $rolls = Get-Rolls
    $score = Get-RollScore -Rolls $rolls
    if (-not $Scores.ContainsKey($score)){
        $Scores.add($score,0)
    }
    $Scores[$score]++
}
$Scores
```
✅ Functions
✅ Variables
✅ Arrays
✅ Hashtables
✅ Conditionals
✅ Loops
❌ Strings

> 👩‍🎓 **Homework**: Try to output a string with the score that happens the most often.
