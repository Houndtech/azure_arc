# Set variables
$downloadUrl = "https://raw.githubusercontent.com/janegilring/azure_arc/refs/heads/localbox_sff/azure_jumpstart_localbox/artifacts/PowerShell/Bootstrap.ps1"
$scriptPath = "C:\Temp\Bootstrap.ps1"

# TODO: Update parameters as needed

# Ensure C:\Temp exists
if (-not (Test-Path -Path 'C:\Temp')) {
    New-Item -Path 'C:\Temp' -ItemType Directory | Out-Null
}

# Download the script
Invoke-WebRequest -Uri $downloadUrl -OutFile $scriptPath

$parameters = @{
    adminUsername             = "Administrator"
    adminPassword             = "U2lra2VyOTA="  # Base64-encoded string
    spnProviderId             = "aa8675e0-63de-4c2e-a00c-24197a131d15"
    tenantId               = "2ffc1db7-b373-4be0-a5ec-f54edd5bf695"
    subscriptionId            = "608937df-4e8f-4dc5-8bc6-16f30646ebd9"
    resourceGroup             = "jan-localbox-sff-rg"
    azureLocation             = "swedencentral"
    azureLocalInstanceLocation= "australiaeast"
    stagingStorageAccountName = "localbox75astfdvn2zso"
    workspaceName             = "LocalBox-Workspace"
    templateBaseUrl           = "https://raw.githubusercontent.com/janegilring/azure_arc/localbox_sff/azure_jumpstart_localbox/"
    registerCluster           = "true"
    deployAKSHCI              = "false"
    deployResourceBridge      = "true"
    natDNS                    = "1.1.1.1"
    rdpPort                   = "3389"  # e.g., "3389"
    autoDeployClusterResource = "false"
    autoUpgradeClusterResource= "false"
    debugEnabled              = "false"
    vmAutologon               = "true"
}

& $scriptPath @parameters 