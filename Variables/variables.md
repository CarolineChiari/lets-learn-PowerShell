# Variables

## Introduction

Variables are a way to store information so that it can be used later.

## Syntax

Variables in PowerShell always start with `$` and is followed but a string containing letters and number or special characters (though it is recommended to avoid special characters).

Variable names are case insensitive, meaning that `$test` is the same as `$TEST`, which is the same as `$TeSt` etc.

``` PowerShell
    # Variables Examples
    $myVariable
    $Process
    $MyData
    $my_data
```
## Creating a Variable

Unlike certain programming languages, you do not have to declare a variable before using it. The default value of a variable is `$null`.

In order to assign a value to a variable, just use the `=` sign like this:

``` PowerShell
$Path = "C:\Windows\Temp"
$Processes = Get-Process
```

## Automatic Variables

PowerShell has some variables called automatic variables, which are variables that PowerShell creates either at startup or on the fly.

The full list of automatic variables can be found [here](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_automatic_variables?view=powershell-7.1)