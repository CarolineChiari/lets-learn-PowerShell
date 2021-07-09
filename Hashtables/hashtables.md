# Hashtables

- [Hashtables](#hashtables)
  - [Introduction](#introduction)
  - [Creating a hashtable](#creating-a-hashtable)
    - [Starting from a blank hashtable](#starting-from-a-blank-hashtable)
    - [Creating a hashtable directly](#creating-a-hashtable-directly)
  - [Reading a hashtable](#reading-a-hashtable)
    - [Reading a value using a key](#reading-a-value-using-a-key)
    - [Reading multiple values using multiple keys](#reading-multiple-values-using-multiple-keys)
    - [Getting all the keys](#getting-all-the-keys)
    - [Checking if a key exists](#checking-if-a-key-exists)

## Introduction

Hashtables are a data structure that allows you to store data similar to an array except it is stored in key/value pairs. Think of it as a dictionary ( which is also another term use to name a hashtable), you search for a word and you get the definition. A hashtable allows you do do things like this:

``` PowerShell
$a=@{
    'Caroline'=@{
        'YouTube'='https://www.youtube.com/channel/UCEYedFQIySmIFuyiaFwJuDw'
        'LinkedIn'='https://www.linkedin.com/in/caroline-chiari/'
        'Twitter'='@CarolineChiari'
        'GitHub'='https://github.com/CarolineChiari'
    }
}
$a['Caroline']['Twitter']
# Result:
# @CarolineChiari
```

## Creating a hashtable

> **Note**: It is important to note that a hashtable can only contain a single entry for a specific key.

### Starting from a blank hashtable

To create an empty hashtable, you need to use `@{}` as such:

``` PowerShell
$a = @{}
```

Then to add keys, you need to use the `.add(<Key>,<Value>)` method as such:

``` PowerShell
$ages = @{}

$key = 'Caroline'
$value = 25
$ages.add($key,$value)

# You can also add it directly without using variables

$ages.add('Caroline-real','I said 25')
$ages.add(25,'Caroline')

$ages['Caroline-real']
# Result
# I said 25
$ages['caroline']
# Result
# 25
$ages['Caroline']
# Result
# 25
$ages[25]
# Result
# Caroline
$ages.add(25,'Caroline2')
# Result
# MethodInvocationException: Exception calling "Add" with "2" argument(s): "Item has already been added. Key in dictionary: '25'  Key being added: '25'"
```

> **Note**: a few things to note here:
>
> - You the key type and the value type do not need to match
> - Not all values need to be of the same type
> - Not all keys need to be of the same type
> - The keys are case insensitive

### Creating a hashtable directly

Just like the example in the introduction, you can create a hashtable manually without using `.add(<key>,<value>)`:

``` PowerShell
$ages=@{
    'Caroline'      = 25
    'Caroline-real' = 'I said 25'
    25              = 'Caroline'
}

$ages['Caroline-real']
# Result
# I said 25
$ages['caroline']
# Result
# 25
$ages['Caroline']
# Result
# 25
$ages[25]
# Result
# Caroline
$ages.add(25,'Caroline2')
# Result
# MethodInvocationException: Exception calling "Add" with "2" argument(s): "Item has already been added. Key in dictionary: '25'  Key being added: '25'"
```

## Reading a hashtable

There are many ways to read a hashtable, you can read the keys or you can read the values. You can also check whether a value or a key exist.

### Reading a value using a key

The most basic way of reading a value is using a key, like we've seen in the examples above:

``` PowerShell
$ages['Caroline-real']
# Result
# I said 25
$ages['caroline']
# Result
# 25
$ages['Caroline']
# Result
# 25
$ages[25]
# Result
# Caroline
```

### Reading multiple values using multiple keys

This is a little secret of PowerShell, but you can read multiple values at once by specifying more than one key, like this:

``` PowerShell
$ages['Caroline',25]
# Result
# 25
# Caroline
```

### Getting all the keys

PowerShell hashtables have the `.keys` property which returns a list of all the keys in the hashtable:

``` PowerShell
$ages.keys
# Result
# Caroline-real
# 25
# Caroline
```

### Checking if a key exists

There are a few ways to check if a hashtable contains a key. The first one is to just try and get a value using a key:

``` PowerShell
$ages['test']
# Result
```

If the key does not exist, it will return `$null`. You can see it better when you do this:

``` PowerShell
$ages['test'] -eq $null
# Result
# True
```

My personal favorite method is using the `.ContainsKey(<Key>)` method:

``` PowerShell
$ages.ContainsKey('test')
# Result
# False
```

 So why is it my favorite? Well because you can do this:

``` PowerShell
$ages['test'] -eq $null
# Result
# True
$ages.ContainsKey('test')
# Result
# False

$ages.add('test',$null)
$ages['test']
# Result
# True
$ages.ContainsKey('test')
# Result
# True
```
