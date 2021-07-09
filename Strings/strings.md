# Strings

## Introduction

Strings deserve their own section because they are usually used for storing data and giving the user feedback. That's why it's important to learn how to form strings.

## Two types of strings

There are two types of strings:

### The single quote (literal) string

The single quote `'` string is a type of string where the content is used explicitly. There is no need to escape characters and variables will not be evaluated.

``` PowerShell
$testString = 'This is a string $ `n'
Write-Host $testString

# Result:
# This is a string $ `n
```

### The double quote string

The double quote string is quite powerful, it can substitute variables for their values, run code and much more.

``` PowerShell
$a = 'test'
$TestString = "This is a $a string `n and this is a new line"

Write-Host $TestString

# Result:
# This is a test string
#   and this is a new line
```

## Building strings

### Using `+`

The most basic way of building strings is using the `+` operator. You basically add strings together to form a new string, like that:

``` PowerShell
$MyString = "This is a " + "test" + " string"
$MyString
# Result:
# This is a test string
```

You can also use variables in there to make it more dynamic:

``` PowerShell
$text = "pretty"
$MyString = "This is a " + $text + " string"
$MyString
# Result:
# This is a pretty string
```

This is perfectly fine, but as you get longer and more complicated, the line gets longer and more complicated.

### Using the double quote string

The double quote string is build just for that.

``` PowerShell
$array = 1..5
for ($i = 0; $i -lt $array.count; $i++){
    Write-Host "At index $i, the value is $($array[$i])"
}

# Result
# At index 0, the value is 1"
# At index 1, the value is 2"
# At index 2, the value is 3"
# At index 3, the value is 4"
# At index 4, the value is 5"
```

Notice this: `$($array[$i])`? Well `$(<code>)` means that PowerShell will execute and return the code inside it first. It's useful for strings but can also be used on its own (but that's not the point of this lesson).

With `$(<code>)` you can do this:

``` PowerShell
$array = 1..5
for ($i = 0; $i -lt $array.count; $i++){
    Write-Host "[$(Get-date)] At index $i, the value is $($array[$i])"
}
# Result:
# [07/09/2021 06:59:15] At index 0, the value is 1
# [07/09/2021 06:59:15] At index 1, the value is 2
# [07/09/2021 06:59:15] At index 2, the value is 3
# [07/09/2021 06:59:15] At index 3, the value is 4
# [07/09/2021 06:59:15] At index 4, the value is 5
```

> **Note**: `Get-Date` is not a variable and still it is being executed when building the string.
