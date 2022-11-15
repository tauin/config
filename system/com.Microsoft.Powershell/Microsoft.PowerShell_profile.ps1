Import-Module posh-git
Import-Module PSReadLine
$GitPromptSettings.DefaultPromptAbbreviateGitDirectory = $true
$GitPromptSettings.DefaultPromptAbbreviateHomeDirectory = $true
$GitPromptSettings.AnsiConsole = $false
$GitPromptSettings.DefaultPromptSuffix = ''
$GitPromptSettings.BeforeStatus = ''
$GitPromptSettings.AfterStatus = ''
$GitPromptSettings.BranchIdenticalStatusSymbol = ''
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -BellStyle None
Set-PSReadLineOption -ShowToolTips
Set-PSReadLineOption -PredictionViewStyle InlineView
if((Get-PSReadLineOption).PredictionViewStyle -eq "InlineView"){
	Set-PSReadLineKeyHandler -Key Tab -Function AcceptSuggestion
}
elseif ((Get-PSReadLineOption).PredictionViewStyle -eq "ListView"){
	Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete
}

Set-PSReadLineKeyHandler -Key Enter -Function ValidateAndAcceptLine
Set-PSReadLineOption -HistoryNoDuplicates:$True
function prompt{
	$prompt = Write-Prompt("λ [")
	$prompt += & $GitPromptScriptBlock
	$prompt += Write-Prompt("]-> ")
	return $prompt
}
