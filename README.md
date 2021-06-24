[![xplr-dua.gif](https://s4.gifyu.com/images/xplr-dua.gif)](https://gifyu.com/image/rGze)


Requirements
------------

- [dua-cli](https://github.com/Byron/dua-cli)


Installation
------------

### Install manually

- Add the following line in `~/.config/xplr/init.lua`

  ```lua
  package.path = os.getenv("HOME") .. '/.config/xplr/plugins/?/src/init.lua'
  ```

- Clone the plugin

  ```bash
  mkdir -p ~/.config/xplr/plugins

  git clone https://github.com/sayanarijit/dua-cli.xplr ~/.config/xplr/plugins/dua-cli
  ```

- Require the module in `~/.config/xplr/init.lua`

  ```lua
  require("dua-cli").setup()
  
  -- Or
  
  require("dua-cli").setup{
    mode = "action",
    key = "D",
  }

  -- Type `:D` to spawn dua-cli in $PWD
  ```


Features
--------

- The paths selected for deletion, but not deleted, will be sent to the xplr
  selection list.
