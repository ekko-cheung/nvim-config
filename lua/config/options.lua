-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- 终端 shell：Windows 用 pwsh，macOS 用 zsh
if vim.fn.has("win32") == 1 then
  local shell = vim.fn.executable("pwsh") == 1 and "pwsh" or "powershell"
  vim.o.shell = shell
  vim.o.shellcmdflag =
    "-NoLogo -NonInteractive -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.UTF8Encoding]::new();$PSStyle.OutputRendering='plaintext';Remove-Alias -Force -ErrorAction SilentlyContinue tee;"
  vim.o.shellredir = '2>&1 | %%{ "$_" } | Out-File %s; exit $LastExitCode'
  vim.o.shellpipe = '2>&1 | %%{ "$_" } | tee %s; exit $LastExitCode'
  vim.o.shellquote = ""
  vim.o.shellxquote = ""
elseif vim.fn.has("mac") == 1 then
  vim.o.shell = vim.fn.executable("zsh") == 1 and "zsh" or "/bin/zsh"
end
