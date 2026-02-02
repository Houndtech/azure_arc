# Set variables

$downloadUrl = "https://raw.githubusercontent.com/Houndtech/azure_arc/refs/heads/2601-local/azure_jumpstart_arcbox/artifacts/Bootstrap.ps1"

$scriptPath = "E:\Temp\Bootstrap.ps1"

# TODO: Update parameters as needed

# Ensure C:\Temp exists
if (-not (Test-Path -Path 'E:\Temp')) {
    New-Item -Path 'E:\Temp' -ItemType Directory | Out-Null
}

# Download the script
Invoke-WebRequest -Uri $downloadUrl -OutFile $scriptPath

$parameters = @{
    adminUsername             = "Administrator"
    adminPassword             = "U2lra2VyOTA="  # Base64-encoded string
    spnProviderId             = "8159cc00-0022-4179-9265-ed3bc870ca49"
    tenantId                  = "9e77cf13-c26f-4ef3-8bca-fbce851162e8"
    subscriptionId            = "38098a00-458f-4939-aaa2-71558d60c1d9"
    resourceGroup             = "LocalLab26"
    azureLocation             = "southcentralus"
    azureLocalInstanceLocation= "southcentralus"
    stagingStorageAccountName = "localbox75astfdvn2zso"
    workspaceName             = "LocalBox-Workspace"
    templateBaseUrl           = "https://github.com/Houndtech/azure_arc/tree/2601-local/azure_jumpstart_arcbox"
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