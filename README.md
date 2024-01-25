## Contents [[🔝]](#contents-)
- [내가 주로 쓰는 InlayHint Color](#lvim-쓸-때-cargo-fmt--cargo-check-활용하자)

- [friendly-snippets rust.json경로](#friendly-snippets-rustjson%EA%B2%BD%EB%A1%9C)
  - rust.json 오리지날 출처(Jeremy Chone짱짱)
    - 출처 : The Rust Production Coding Blueprints repository is maintained by Jeremy Chone (https://youtube.com/jeremychone). 
- [Tabby Install(Self-hosted AI coding assistant)](#tabby-aicoding-assistant)

- [LunarVim 세팅 오리지날 주인(Source)](#%EC%9D%B4%EA%B1%B0-%EC%9B%90%EB%9E%98-%EC%A3%BC%EC%9D%B8-%EC%98%81%EC%83%81-my-development-setup-neovim-tmux-alacritty--rust-based-cli-tools)

- [LunarVim Setting 내가 공부하려고 정리한 영상YouTubeContents](#007%EA%B0%9C%EA%B3%A0%EC%83%9D%ED%95%98%EB%A9%B4%EC%84%9C-%EB%B0%B0%EC%9A%B0%EB%8A%94-rust_fullstack_lunarvim_setting_part1)

- Rust Code Snippets관련 자료
  - [러스트Rust 고수의 Snippets](#rust%EA%B3%A0%EC%88%98%EC%9D%98-snippets%EC%A0%95%EB%A6%AC)
  - [Helix Text Editor Snippets서버 구축하기](#helix-snippets-server%EA%B5%AC%EC%B6%95%ED%95%98%EA%B8%B0)

<hr>

# lvim_Rust_AI_Setting
LunarVim_luaSetting_(Rust Languges &amp; Tabby AI &amp; snippets setting)

- lvim-config_gyoung

  - 1. install
https://www.lunarvim.org/

  - 2. .config/lvim 세팅

- FTPlugin(filetype plugin)
  - https://www.lunarvim.org/docs/configuration/ftplugin

- 설정 위치

```
$HOME/.config/lvim
```

- tree
```
tree          
.
├── after
│   └── ftplugin
│       ├── bash.lua
│       ├── go.lua
│       ├── javascript.lua
│       ├── javascriptreact.lua
│       ├── rust.lua
│       ├── typescript.lua
│       └── typescriptreact.lua
├── config.lua
├── lazy-lock.json
└── lua
    └── user
        ├── functions.lua
        ├── icons.lua
        ├── inlay-hints.lua
        ├── keymaps.lua
        ├── lsp
        │   ├── init.lua
        │   └── languages
        │       ├── rust.lua
        │       └── sh.lua
        ├── options.lua
        ├── plugins.lua
        └── whichkey.lua

6 directories, 19 files
```

<hr>

# 007개고생하면서 배우는 Rust_FullStack_LunarVim_Setting_part1[[🔝]](#contents-)
  - https://youtube.com/live/skO5_MgVQnI?feature=share

- lunarvim 설치되는 위치 어떻게 구현되는지 확인가능
```
$HOME/.local/share/lunarvim/lvim
```

# 다른 Vim Setting[[🔝]](#contents-)
- https://github.com/YoungHaKim7/rust_vim_setting
- https://github.com/YoungHaKim7/lvim-config_gyoung_tabby_AI_Setting

<hr>

# 외국분이 내 세팅 더 깔끔하게 정리해줌[[🔝]](#contents-)

- https://github.com/pingu1m/config

- https://github.com/pingu1m/config/blob/main/nvim/lua/plugins/extras.lua

# friendly-snippets rust.json경로[[🔝]](#contents-)

- 여기에 잘 추가해 주면 됨
```
.local/share/lunarvim/site/pack/lazy/opt/friendly-snippets/snippets/rust/rust.json
```
- ```rust.json``` 참고
- https://github.com/YoungHaKim7/rust_vim_setting/blob/main/01_Vim_NeoVim_etc_Rust_settings/snippets_Lunar_NeoVim/rust/rust.json
- https://github.com/YoungHaKim7/rust_vim_setting/tree/main/01_Vim_NeoVim_etc_Rust_settings/snippets_Lunar_NeoVim

- rust.json 오리지날 출처(Jeremy Chone짱짱)
  - 출처 : The Rust Production Coding Blueprints repository is maintained by Jeremy Chone (https://youtube.com/jeremychone).
    - https://github.com/rust10x/rust10x-vscode

# Tabby AI(Coding Assistant)[[🔝]](#contents-)
- About
  - Self-hosted AI coding assistant


- https://github.com/TabbyML/tabby
- macos
```
brew install tabbyml/tabby/tabby

# Start server with StarCoder-1B
tabby serve --device metal --model TabbyML/StarCoder-1B
```

- LinuxOS
  - Run Tabby in 1 Minute https://github.com/TabbyML/tabby
    - The easiest way to start a Tabby server is by using the following Docker command:
```
docker run -it \
  --gpus all -p 8080:8080 -v $HOME/.tabby:/data \
  tabbyml/tabby \
  serve --model TabbyML/StarCoder-1B --device cuda
```

- Stability AI, 코딩용 LLM 모델 Stable Code 3B 공개 | GeekNews
  - https://news.hada.io/topic?id=12919&utm_source=discord&utm_medium=bot&utm_campaign=1480
- stable-code-3b
- 모델을 먼저 세팅해주고 해야 된다.
  - https://github.com/TabbyML/registry-tabby
    - https://github.com/TabbyML/registry-tabby/blob/main/models.json

```
docker run -it \          
  --gpus all -p 8080:8080 -v $HOME/.tabby:/data \
  tabbyml/tabby \
  serve --model TabbyML/Mistral-7B --device cuda

```

- https://tabby.tabbyml.com/docs/faq
  - 3B짜리

```bash
docker run -it \
  --gpus all -p 8080:8080 -v $HOME/.tabby:/data \
  tabbyml/tabby \
  serve --model TabbyML/StarCoder-3B --device cuda
```

- 모델 바꿔주기 좋네
  - https://jonghoonpark.com/2023/11/05/tabby
```
docker run -it \
–gpus all -p 8080:8080 \
-e TABBY_DISABLE_USAGE_COLLECTION=1 \
-v $HOME/.tabby:/data \
tabbyml/tabby \
serve –model TabbyML/CodeLlama-7B –device cuda
```

# lvim 쓸 때 ```cargo fmt && cargo check``` 활용하자[[🔝]](#contents-)

```bash
$ cargo fmt && cargo check
```

- inlayhint 색깔 hex color (LunarVim Inlayhint Color Settings)

```bash
// 요즘 쓰는 색 240106
:hi Comment guifg=#35638f guibg=#420517

// 배경은 어두운 빨간색 /  글씨는 약간 밝은 색
:hi Comment guifg=#8aaecf guibg=#4e1a1a
```

<hr>

# Rust고수의 snippets정리[[🔝]](#contents-)

- https://github.com/hhatto/rust-snippets

- 포크함 Fork https://github.com/YoungHaKim7/rust-snippets

# Helix snippets Server구축하기

- https://github.com/estin/simple-completion-language-server


<hr>

# 이거 원래 주인 영상 My Development Setup (Neovim, Tmux, Alacritty & Rust-based CLI Tools)[[🔝]](#contents-)

https://youtu.be/stCXFxC4OH0


# Fork Github & Thank you.[[🔝]](#contents-)

https://github.com/adibhanna/lvim-config

# zig lang setting 난중에 적용할 예정[[🔝]](#contents-)

https://github.com/NTBBloodbath/zig-tools.nvim


# Todo[[🔝]](#contents-)
- [x] Apply jk as esc
  - /lua/user/keymaps.lua
  - ```
    lvim.keys.insert_mode["jk"] = "<Esc>"
    ```
- [x] Apply Relative Number
  - /lua/user/option.lua
  - ```
    local options = {
        relativenumber = true, -- set relative numbered lines
    }
    ``` 
- [x] Apply colorscheme
  - - /lua/user/option.lua
  - ```
    -- lvim.colorscheme = "tokyonight-moon"
    -- lvim.colorscheme = "gruvbox-material"
    lvim.colorscheme = "habamax"
    ``` 

- [x] Rust fmt Setting()

  - https://github.com/rust-lang/rust.vim
  - The perfect Neovim setup for Rust. https://youtu.be/mh_EJhH49Ms

    - /lua/user/plugins.lua
    ```bash
    -- cargo fmt
      {
        "rust-lang/rust.vim",
        ft = "rust",
        init = function ()
          vim.g.rustfmt_autosave = 1
        end
      },

    ```

- [ ] zig-tools (lsp) will be applied.

  - todo!()

