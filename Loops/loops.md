# Loops

- [Loops](#loops)
  - [Introduction](#introduction)
  - [Foreach loop](#foreach-loop)
  - [While loop](#while-loop)
  - [Do While loop](#do-while-loop)
  - [For loop](#for-loop)

## Introduction

Loops are one of the best parts of programming. It allows you to do the same thing over and over again without having to writing the same thing over and over again.

## Foreach loop

The foreach loop is the easiest loop, it allows you to iterate over each item in an array.

``` PowerShell
$array = 1..5
ForEach ($item in $array)
{
    Write-Host $item
}
# Result
# 1
# 2
# 3
# 4
# 5
```

## While loop

While loops are loops that execute as long as a condition is met. Unlike the foreach loop, while loops have the ability to run indefinitely (called infinite loops) if your evaluation/update of the condition isn't done properly

``` PowerShell
# An Infinite Loop
# Press ctrl+c to exit out of it 
# Or close the PowerShell session

while($true){

}
```

``` PowerShell
# A loop that will run 10 times
$i = 0
while($i -lt 10){
    $i++
}
```

``` PowerShell
# A loop that will end the hour is 6

while((Get-date).Hour -ne 6){
    
}
```

## Do While loop

Do/While loops are basically while loops where the condition is evaluated at the end of the loop. One property of the do/while loop is that it will run at least once.

``` PowerShell
# Without Do/While

# Note: the below example is pseudo-code
$orders = Get-MyOrders 

While (-not $orders.count){
    $orders = Get-MyOrders
}

# With Do/While

do {
    $orders = Get-MyOrders
}while (-not $orders.count)
```

If you look at the first example, you can see the some code is written twice, whereas with a Do/While loop, the code is much simpler.

## For loop

A For loop is commonly used to run a loop a certain amount of time, usually for an array. It has a more complicated syntax than the other loops.

``` PowerShell
for (<initialization>; <condition evaluation>; <update>){

}
```

So usually a for loop looks like this:

``` PowerShell
$array = 1..5
for ($i=0; $i -lt $array.count; $i++){
    write-host $i
}
# Result
# 1
# 2
# 3
# 4
# 5
```

Now, even though a for loop is commonly used like the last example, you can also use it like this:

``` PowerShell
for ($date = get-date; $date.hour -ne 6; $date = get-date){
}
```

This example, effectively performs the same duty as our previous examples.
