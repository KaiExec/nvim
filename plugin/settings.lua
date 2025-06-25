local opt = vim.opt
-----   OPTION   -----

-- 行号
opt.number = true
opt.relativenumber = true

-- 缩进
opt.list = true
opt.shiftwidth = 4
opt.softtabstop = -1 --same as shiftwidth
opt.expandtab = true
opt.smartindent = true

-- 光标行
opt.cursorline = true

-- 系统剪贴板
opt.clipboard:append("unnamedplus")

-- 默认新窗口右和下
opt.splitright = true
opt.splitbelow = true

-- 搜索
opt.ignorecase = true
opt.smartcase = true
