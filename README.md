## Start

Start with command below:
```
git clone git@github.com:KaiExec/nvim.git ~/.config/nvim
```

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

## Usage

### Cursor moving

```
                       i
            -->
                 j   k   l


     5                    I
                -->
5   5   5           J   K   L
```
