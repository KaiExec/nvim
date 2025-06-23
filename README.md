## Start

git clone git@github.com:KaiExec/nvim.git

## Before use it

Please comment the code in *~/.local/share/nvim/lazy/snacks.nvim/lua/snacks/scope.lua*  below manually
```lua
    textobject = {
      ii = {
        min_size = 2, -- minimum size of the scope
        edge = false, -- inner scope
        cursor = false,
        treesitter = { blocks = { enabled = false } },
        desc = "inner scope",
      },
      ai = {
        cursor = false,
        min_size = 2, -- minimum size of the scope
        treesitter = { blocks = { enabled = false } },
        desc = "full scope",
      },
    },
```
