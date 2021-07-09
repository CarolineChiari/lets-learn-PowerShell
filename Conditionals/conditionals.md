# Conditionals

## Introduction

When you write code, you often have to handle different scenarios, that's where conditional statements come in.

## Operators

An important part of creating conditional statements is using comparison operators. They could be an entire lesson on their own, but thankfully the PowerShell documentation has great [documentation](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_comparison_operators?view=powershell-7.1) on them, so I recommend you have a look.

## If

`If` is the basic conditional statement. Basically, if a condition is met, execute the statement in the brackets. THe syntax is as follows:

``` PowerShell
if (<Condition>){
    # Code to execute
}
```

Here's an example:

``` PowerShell
$RandomNumber = Get-Random -Minimum 1 -Maximum 3 # Get a random number, either 1 or 2
if ($RandomNumber -eq 2){
    Write-Host "I got a 2!"
}
if ($RandomNumber -eq 1){
    Write-Host "I got a 1!"
}
```

Feel free to run the above code yourself :). The above code shows a problem with using just `if`. Thankfully this problem has been solved with `else`

## If/Else

The `else` statement solves the problem where you want something like this: If condition X is met do this, otherwise do that.

``` PowerShell
If (<condition>)
{
    # Run code if condition is met
} else {
    # Run code if condition is not met
}
```

Our previous example can now become:

``` PowerShell
$RandomNumber = Get-Random -Minimum 1 -Maximum 3 # Get a random number, either 1 or 2
if ($RandomNumber -eq 2){
    Write-Host "I got a 2!"
} else {
    Write-Host "I got a 1!"
}
```

Now that's great, but what if I want to handle more cases?

## If/Elseif/Else

If you want to handle more than two cases, you can do the following:

``` PowerShell
if (<condition1>)
{

} elseif (<condtion2>)
{

} elseif (<condtion3>)
{
    
} else
{

}
```

The way the `elseif` configuration works is the following:

1. Is the condition in `if` met?  If so, execute the code in the `if` block and skip the rest, otherwise go to the next section.

2. If the condition in `if` is not met, evaluate `elseif`, if that condition is met run the code in the `elseif` and ignore the rest. Otherwise go to the next section.

3. If the condition in `elseif` is not met, evaluate the next `elseif`, if that condition is met run the code in the `elseif` and ignore the rest. Otherwise go to the next section.

4. If none of the sections evaluate to `$true` run the code in the `else` block.

What this means is that you need to make sure to properly order and prioritize your blocks.

Here's a concrete example:

> I have a 10-sided dice, I can roll it 10 times and then I get a score based on the following rules:
> 1. If I roll a 2, I get 10 points
> 2. If I roll an even number I get 5 points
> 3. If I roll a 3 I get 3 points
> 4. Everything else I get 1 point
>
> The following are my rolls:
> 1, 2, 3, 4, 5, 6, 7, 8, 9, 10

> ❕ Run through each rule manually first.

Here are all our conditional statements:

``` PowerShell
$roll -eq 2
[int]($roll/2) -eq $roll/2
$roll -eq 3
```

Here are a different configurations:

``` PowerShell
$rolls = 1..10
$total = 0
foreach ($roll in $rolls)
{
    if ($roll -eq 3){
        $total += 3
    } elseif ([int]($roll/2) -eq $roll/2) {
        $total += 5
    } elseif ($roll -eq 2){
        $total+=10
    }else {
        $total+=1
    }
}
$total
# Result
# 32
```

Another one:

``` PowerShell
$rolls = 1..10
$total = 0
foreach ($roll in $rolls)
{
    if ([int]($roll/2) -eq $roll/2){
        $total += 5
    } elseif ($roll -eq 3) {
        $total += 3
    } elseif ($roll -eq 2){
        $total+=10
    }else {
        $total+=1
    }
}
$total
# Result
# 32
```

and finally:

``` PowerShell
$rolls = 1..10
$total = 0
foreach ($roll in $rolls)
{
    if ($roll -eq 2){
        $total += 10
    } elseif ($roll -eq 3) {
        $total += 3
    } elseif ([int]($roll/2) -eq $roll/2){
        $total+=5
    }else {
        $total+=1
    }
}
$total
# Result
# 37
```

As you can see, the order matters!

## Switch

Now if we look at the last example, what if every single roll had its own specific number of points? You would have to write and if/elseif/else satement for every single case, which can become very annoying. Thankfully `switch` is here!

Let's say those are my rules:
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

With a `switch` we can do the following:

``` PowerShell
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
$total
# Result:
# 64
```
