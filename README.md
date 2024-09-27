# alpha-art.nvim
`alpha-art` is simple plugin to generate pixels art for [alpha](https://github.com/goolord/alpha-nvim) plugin
## Installation
With [lazy.nvim](https://github.com/folke/lazy.nvim):
```lua
{
    'goolord/alpha-nvim',
    dependencies = { "phamdat8/alpha-art.nvim" },
    opts = function()
      dashboard.config.layout[2] = require("art").pixels("bee")

      return dashboard
    end,
    config = function(_, dashboard)
      require("alpha").setup(dashboard.config)
    end,
};
```
