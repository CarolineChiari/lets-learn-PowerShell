# Let's Learn PowerShell


- [Let's Learn PowerShell](#lets-learn-powershell)
  - [Introduction](#introduction)
  - [Warning](#warning)
  - [Prerequisites and useful resources](#prerequisites-and-useful-resources)
  - [The basics](#the-basics)
    - [✅ Cmdlets](#-cmdlets)
    - [✅ Variables](#-variables)
    - [✅ Strings](#-strings)
    - [✅ Arrays](#-arrays)
    - [✅ Hashtables](#-hashtables)
    - [✅ Loops](#-loops)
    - [✅ Conditionals](#-conditionals)
    - [✅ Functions](#-functions)
    - [✅ (Optional) Aliases](#-optional-aliases)
  - [A little more advanced](#a-little-more-advanced)
    - [Pipes](#pipes)
    - [Advanced functions](#advanced-functions)
    - [Start-job](#start-job)
    - [Workflows](#workflows)
  - [Azure](#azure)
    - [Azure CLI](#azure-cli)
    - [ARM templates](#arm-templates)
    - [Azure Functions](#azure-functions)
    - [Azure Automation](#azure-automation)

✅ = Lesson Completed

## Introduction

The goal of this repository is to give you examples and lessons for learning PowerShell.

## Warning

Even though this is common sense, I need to put it in there:

**Do not run any code from the internet that you do not understand!**
***Always* read the code before running it.**

## Prerequisites and useful resources

The lessons in here are all based on PowerShell 7, and using VSCode as the editor. You can download them here:

[Installing PowerShell](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell?view=powershell-7.1)

[Installing VSCode](https://code.visualstudio.com/docs/setup/setup-overview)

[PowerShell in VSCode](https://code.visualstudio.com/docs/languages/powershell)

[PowerShell official documentation](https://docs.microsoft.com/en-us/powershell/)

[PowerShell About Topics](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about?view=powershell-7.1): Those articles are great for learning about specific topics in PowerShell which are not necessarily cmdlets or modules.

## The basics

### ✅ Cmdlets

Cmdlets (pronounces 'command lets') are commands in PowerShell used to run actions.

[Lesson](Cmdlets/cmdlets.md)
[Code](Cmdlets/cmdlets.ps1)

### ✅ Variables

Variables are a way to store information so that it can be used later.

[Lesson](Variables/variables.md)

### ✅ Strings

Strings deserve their own section because they are usually used for storing data and giving the user feedback. That's why it's important to learn how to form strings.

[Lesson](Strings/strings.md)

### ✅ Arrays

Arrays are a collection of values, it allows you to store multiple values in one object. Think of it as a list for your groceries, the piece of paper is the array and each item is a element of the array.

[Lesson](Arrays/arrays.md)

### ✅ Hashtables

Hashtables are a data structure that allows you to store data similar to an array except it is stored in key/value pairs.

[Lesson](Hashtables/hashtables.md)

### ✅ Loops

Loops are one of the best parts of programming. It allows you to do the same thing over and over again without having to writing the same thing over and over again.

[Lesson](Loops/loops.md)

### ✅ Conditionals

When you write code, you often have to handle different scenarios, that's where conditional statements come in.

[Lesson](Conditionals/conditionals.md)

### ✅ Functions

If you have to perform the same actions over and over again and every time it takes a few lines of code to do it, then functions are your friend!

[Lesson](Functions/functions.md)

### ✅ (Optional) Aliases

Aliases are a shortened way to invoke cmdlets and other PowerShell entities. **They are not considered best practice and should be avoided as much as possible**. They are only in this lesson plan because some people do use them and it can be useful for you to know them. There will be no lesson about them, but feel free to read the documentation about them:

[Documentation](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_aliases?view=powershell-7.1)

## A little more advanced

### Pipes

### Advanced functions

### Start-job

### Workflows

## Azure

### Azure CLI

### ARM templates

### Azure Functions

### Azure Automation

