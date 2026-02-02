$RGname = "LocalLab26"
$templatefile = "C:\Code\Github\azure_arc\azure_jumpstart_localbox\bicep\main.bicep"
$templateParameterFile = "C:\Code\Github\azure_arc\azure_jumpstart_localbox\bicep\AltLab.bicepparam"
$Location = "southcentralus"
#New-AzResourceGroup -Name $RGname -Location $Location
New-AzResourceGroupDeployment -Name localbox -ResourceGroupName $RGname -githubAccount houndtech -githubBranch 2601-local -TemplateFile $TemplateFile -TemplateParameterFile $TemplateParameterFile