# Keybindings

The default leader key in my vim configuration is `,`. This can be changed, but note that all commas will be changed with whatever the new leader key is.

## Telescope

| Key               | Command                 |
| ----------------- | ----------------------- |
| `,ff` or `,<tab>` | `:Telescope find_files` |
| `,fg`             | `:Telescope live_grep`  |
| `,fb`             | `:Telescope buffers`    |
| `,fh`             | `:Telescope help_tags`  |

## LSP

| Key         | Command                      |
| ----------- | ---------------------------- |
| `gD`        | Go to declaration            |
| `gd`        | Go to definition             |
| `K`         | Show information             |
| `gi`        | Go to implementation         |
| `<C-k>`     | Signature help               |
| `<space>wa` | Add folder to workspace      |
| `<space>wr` | Remove folder from workspace |
| `<space>wl` | List workspace folders       |
| `<space>D`  | View type definition         |
| `,rn`       | Rename variable              |
| `<space>ca` | Code action                  |
| `gr`        | References                   |
| `<space>f`  | Formatting                   |

## Windows

| Key      | Command                         |
| -------- | ------------------------------- |
| `<C-w>H` | Horizontal split to vertical    |
| `<C-w>J` | Vertical split to horizontal    |
| `<C-w>r` | Swap buffers                    |
| `<C-w>=` | Equalize buffer size            |
| `<C-w>+` | Expand current buffer upwards   |
| `<C-w>-` | Expand current buffer downwards |
| `<C-h>`  | Move one window left            |
| `<C-j>`  | Move one window down            |
| `<C-k>`  | Move one window up              |
| `<C-l>`  | Move one window right           |

## Easy Motion

| Key  | Command  |
| ---- | -------- |
| `,w` | Hop word |
| `,j` | Hop Line |

## Copy Clipboard

Add the leader key to any copy command and it will copy/paste to and from the clipboard.

## Misc

| Key     | Command                               |
| ------- | ------------------------------------- |
| `,ll`   | Reload `init.lua`                     |
| `,t`    | Open terminal in current buffer       |
| `<esc>` | From inserrt to normal mode in buffer |
| `<C-z>` | Exit vim, use `fg` to restore vim     |
| `gv`    | Reselect previous visual selection    |

