<#
.SYNOPSIS
    ..
.EXAMPLE
    ..
.OUTPUTS
    ..
.PARAMETER ScriptBase64Encoded 
    [MANDATORY]
    ..
#>

Param(
    [parameter(Mandatory=$true)]
    [String]$ScriptBase64Encoded
)

$ScriptBase64Encoded = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($ScriptBase64Encoded))
Invoke-Expression $ScriptBase64Encoded