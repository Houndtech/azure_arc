using './main.bicep'

param githubAccount = 'houndtech'
param githubBranch = 'main2601-local'
param location = 'southcentralus'

param rdpPort = '3389'
param vmSize = 'Standard_E32s_v6'
param enableAzureSpotPricing = false
param governResourceTags = true
param logAnalyticsWorkspaceName = 'LocalLab-Workspace'
param tenantId = '9e77cf13-c26f-4ef3-8bca-fbce851162e8'
param windowsAdminUsername = 'arcdemo'
param deployBastion = false
param spnProviderId = '8159cc00-0022-4179-9265-ed3bc870ca49'
param autoDeployClusterResource = true
param autoUpgradeClusterResource = false
param vmAutologon = true
param azureLocalInstanceLocation = 'southcentralus'
param physicalDeployment = true

param windowsAdminPassword = 'Dem0Admin2026!'

param tags = {
  Project: 'jumpstart_LocalBox'
}


