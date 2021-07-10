$name = Read-Host "What is your name?"

# Step 1: Connect to Azure
if (-not (Get-AzContext)) {
    Connect-AzAccount
}
#Step 2: Get the proper resource group name
$rgName = Get-Date -Format "d-M-yyyy"
$resourceGroup = Get-AzResourceGroup | Where-Object { $_.ResourceGroupName -eq $rgName }

# Step 3: Create Azure Functions Storage Account
$sa = New-AzStorageAccount -Name ("$($name)$($rgname)funcsa").ToLower().replace('-', '') `
    -ResourceGroupName $rgName `
    -Location $resourceGroup.Location `
    -SkuName "Standard_LRS"

# Step 3: Create Azure Functions App
New-AzFunctionApp -ResourceGroupName $rgName `
    -Name "$name-$rgname-func" `
    -Location $resourceGroup.Location `
    -Runtime "PowerShell" `
    -StorageAccountName ("$($name)$($rgname)funcsa").ToLower().replace('-', '') `

