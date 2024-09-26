# alpha-art.nvim
`alpha-art` is simple plugin to generate pixels art for [alpha](https://github.com/goolord/alpha-nvim) plugin
## Installation
With [lazy.nvim](https://github.com/folke/lazy.nvim):
```lua
{
    'goolord/alpha-nvim',
    dependencies = { "phamdat8/alpha-art.nvim" },
    opts = function()
      local dashboard = require("alpha.themes.dashboard")

      local art = require("art").pixels("bee")
      dashboard.section.header = art
    end,
    config = function()
      require("alpha").setup(require("alpha.themes.dashboard").opts)
    end,
};
```
