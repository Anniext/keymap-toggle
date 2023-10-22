local M = {}

function M.switch()
  vim.fn.system('osascript -e \'tell application "System Events" to keystroke " " using {control down, shift down}\'')
end

function M.setup()
  vim.cmd('command! AutoToggle :lua require(\'keymap-toggle\').switch()')
end
vim.cmd('autocmd FileType cpp inoremap // <Esc>:AutoToggle<CR>i//')
return M
