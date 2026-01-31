using './main.bicep'

param githubAccount = 'microsoft'
param githubBranch = 'main'
param location = 'northeurope'

param rdpPort = '3389'
param vmSize = 'Standard_E32s_v6'
param enableAzureSpotPricing = false
param governResourceTags = true
param logAnalyticsWorkspaceName = 'LocalBox-Workspace'
param tenantId = '2ffc1db7-b373-4be0-a5ec-f54edd5bf695'
param windowsAdminUsername = 'arcdemo'
param deployBastion = false
param spnProviderId = 'aa8675e0-63de-4c2e-a00c-24197a131d15'
param autoDeployClusterResource = true
param autoUpgradeClusterResource = false
param vmAutologon = true
param azureLocalInstanceLocation = 'australiaeast'
param physicalDeployment = true

param windowsAdminPassword =  /*TODO*/

param tags = {
  Project: 'jumpstart_LocalBox'
}
