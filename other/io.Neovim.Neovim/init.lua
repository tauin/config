require('settings.glob-settings') -- Settings across different configurations

if vim.g.vscode then
	require('settings.vscode-settings')
else
	require('settings.terminal-settings')
end
