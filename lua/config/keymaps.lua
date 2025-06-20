local opts = {
  noremap = true, -- non-recursive
  silent = true,  -- do not show message
}
local keymap = vim.keymap
local nv = { "n", "v" }

------ 插入模式 ------
---<tab>和<C-i>的ASCII码一致，使得这两个键位只能使用一个功能，扫码了...
keymap.set("i", "<C-j>", "<Left>",opts)
keymap.set("i", "<C-l>", "<Right>",opts)

------ 视觉模式 ------
--单行或多行移动
keymap.set("x", "<C-k>", ":m '>+1<CR>gv=gv", opts)
keymap.set("x", "<C-i>", ":m '<-2<CR>gv=gv", opts)
keymap.set("n", "<C-a>", "<C-v>", opts)

------ 正常模式 ------
--新增窗口
keymap.set("n", "zl", "<C-w>v", opts) --水平新增
keymap.set("n", "zi", "<C-w>s", opts) --垂直新增

--窗口移动
keymap.set("n","<C-j>", "<C-w>h", opts)
keymap.set("n","<C-l>", "<C-w>l", opts)
keymap.set("n","<C-k>", "<C-w>j", opts)
keymap.set("n","<C-i>", "<C-w>k", opts)

--移动键
keymap.set(nv, "k", "j", opts)
keymap.set(nv, "i", "k", opts)
keymap.set(nv, "j", "h", opts)
keymap.set(nv, "n", "i", opts)
keymap.set(nv, "N", "I", opts)
keymap.set(nv, "I", "5k", opts)
keymap.set(nv, "K", "5j", opts)
keymap.set({"n","x","o"}, "J", "^", opts)
keymap.set({"n","x","o"}, "L", "$", opts)

--Copy
keymap.set("n","Y", "^y$", opts)


-- keymap.set("n", "<leader>S", ":%s/\\r//g<CR>", opts)     For Windows

-- 取消高光
keymap.set(nv,"<leader><CR>",":nohlsearch<CR>")

-- keymap.set("n","<leader>y", nvim-surround.config.add,opts)
vim.keymap.set("n", "<C-S-i>", [[<cmd>vertical resize +5<cr>]]) -- make the window biger vertically
vim.keymap.set("n", "<C-S-k>", [[<cmd>vertical resize -5<cr>]]) -- make the window smaller vertically


keymap.set("n","-", "n", opts)
keymap.set("n","_", "N", opts)
