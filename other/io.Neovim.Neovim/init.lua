require('glob-settings') -- Settings across different configurations

if vim.g.vscode then
	require('vscode-settings')
else
	require('terminal-settings')
end
