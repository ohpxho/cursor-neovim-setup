-- Correct variable declaration
local keymap = vim.keymap

-- General keymaps
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- Window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", ":close<CR>", { desc = "Close current split" })

-- VSCode integration keymaps
local function vscode(action)
  return string.format("<cmd>lua require('vscode').action('%s')<CR>", action)
end

-- General VSCode commands
keymap.set("n", "<leader>t", vscode("workbench.action.terminal.toggleTerminal"), { desc = "Toggle terminal" })
keymap.set("n", "<leader>b", vscode("editor.debug.action.toggleBreakpoint"), { desc = "Toggle breakpoint" })
keymap.set("n", "<leader>d", vscode("editor.action.showHover"), { desc = "Show hover" })
keymap.set("n", "<leader>a", vscode("editor.action.quickFix"), { desc = "Quick fix" })
keymap.set("n", "<leader>sp", vscode("workbench.actions.view.problems"), { desc = "Show problems" })
keymap.set("n", "<leader>cn", vscode("notifications.clearAll"), { desc = "Clear notifications" })
keymap.set("n", "<leader>ff", vscode("workbench.action.quickOpen"), { desc = "Quick open" })
keymap.set("n", "<leader>cp", vscode("workbench.action.showCommands"), { desc = "Show commands" })
keymap.set("n", "<leader>pr", vscode("code-runner.run"), { desc = "Run code" })
keymap.set("n", "<leader>fd", vscode("editor.action.formatDocument"), { desc = "Format document" })

-- Harpoon keymaps
keymap.set("n", "<leader>ha", vscode("vscode-harpoon.addEditor"), { desc = "Harpoon add" })
keymap.set("n", "<leader>ho", vscode("vscode-harpoon.editorQuickPick"), { desc = "Harpoon quick pick" })
keymap.set("n", "<leader>he", vscode("vscode-harpoon.editEditors"), { desc = "Harpoon edit" })

-- Harpoon navigation
for i = 1, 9 do
  keymap.set(
    "n",
    string.format("<leader>h%d", i),
    vscode(string.format("vscode-harpoon.gotoEditor%d", i)),
    { desc = string.format("Harpoon goto editor %d", i) }
  )
end

-- Project manager keymaps
keymap.set("n", "<leader>pa", vscode("projectManager.saveProject"), { desc = "Save project" })
keymap.set("n", "<leader>po", vscode("projectManager.listProjects"), { desc = "Open project in current window" })
keymap.set("n", "<leader>pn", vscode("projectManager.listProjectsNewWindow"), { desc = "Open project in new window" })
keymap.set("n", "<leader>pe", vscode("projectManager.editProjects"), { desc = "Edit projects" }) 