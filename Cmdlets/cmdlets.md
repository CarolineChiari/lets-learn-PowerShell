# Cmdlets

- [Cmdlets](#cmdlets)
  - [Introduction](#introduction)
  - [Structure](#structure)
  - [Common verbs you should know](#common-verbs-you-should-know)
    - [New](#new)
    - [Get](#get)
    - [Set](#set)
    - [Remove](#remove)
    - [Write](#write)
  - [Parameters](#parameters)
  - [Parameter sets](#parameter-sets)

## Introduction

Cmdlets (pronounces 'command lets') are commands in PowerShell used to run actions.

## Structure

Cmdlets have a standard naming convention: **verb**-**noun**. There is a very specific list of verbs which are tied to very specific actions. You can read more about the list of verbs [here](https://docs.microsoft.com/en-us/powershell/scripting/developer/cmdlet/approved-verbs-for-windows-powershell-commands?view=powershell-7.1).

## Common verbs you should know

### New

The `New` verb means that something that did not exist before is being created.

### Get

The `Get` verb retrieves a value. It is important to emphasize that the `Get` verb should not in any way modify anything.

### Set

The `Set` verb sets a value.

### Remove

The `Remove` verb is to remove objects.

### Write

`Write` is used as a way to write an output.

## Parameters

Cmdlets can take *parameters*. Parameters are a way to specify how the cmdlet will execute, such as specifying a path for a copy job or a target address for testing the connection.

Some parameters are optionals whereas some are required.

## Parameter sets

Certain parameters are grouped together, so for example, if a `-path` parameter, the parameter set that goes with the path is related to the file system. If the same cmdlet takes a `-targetAddress` parameter, it may perform the same action on a remote machine and take parameters related to remote access, such as credentials, authentication method etc.

> 🔎 Take a look at the parameter set for `Invoke-Command` [here](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/invoke-command?view=powershell-7.1)

![Parameter sets example on Get-ChildItem](../Screenshots/cmdlets/cmdlets-parameter%20sets.png)
