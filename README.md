# ubuntu-vim-init
Scripts to automatically install and configure Vim on Ubuntu, not only vim
before run install.sh, you need to do as fllow on a new system:

step 1 : Replace /etc/apt/source.list as required.

step 2 : install git and clone this source code from GitHub

step 3 : add the following to the file /etc/hosts
```
140.82.113.3      github.com
140.82.114.20     gist.github.com
151.101.184.133    assets-cdn.github.com
151.101.184.133    raw.githubusercontent.com
151.101.184.133    gist.githubusercontent.com
151.101.184.133    cloud.githubusercontent.com
151.101.184.133    camo.githubusercontent.com
151.101.184.133    avatars0.githubusercontent.com
199.232.68.133     avatars0.githubusercontent.com
199.232.28.133     avatars1.githubusercontent.com
151.101.184.133    avatars1.githubusercontent.com
151.101.184.133    avatars2.githubusercontent.com
199.232.28.133     avatars2.githubusercontent.com
151.101.184.133    avatars3.githubusercontent.com
199.232.68.133     avatars3.githubusercontent.com
151.101.184.133    avatars4.githubusercontent.com
199.232.68.133     avatars4.githubusercontent.com
151.101.184.133    avatars5.githubusercontent.com
199.232.68.133     avatars5.githubusercontent.com
151.101.184.133    avatars6.githubusercontent.com
199.232.68.133     avatars6.githubusercontent.com
151.101.184.133    avatars7.githubusercontent.com
199.232.68.133     avatars7.githubusercontent.com
151.101.184.133    avatars8.githubusercontent.com
199.232.68.133     avatars8.githubusercontent.com
```
step 4 : run ./install.sh and wait for the installaiton to complete

step 5 : start to vim and execute :PlugInstall and wait

step 6 : execute :CocConfig and add the following to the opening file
```
{
  "languageserver":{
    "clangd":{
      "command":"clangd",
      "filetypes":[
        "c",
        "cpp"
      ],
      "rootPatterns":[
        "compile_commands.json",
        ".git"
      ],
      "args":[
        "--compile-commands-dir=build",
        "--compile_args_from=filesystem",
        "--all-scopes-completion",
        "--background-index",
        "--clang-tidy",
        "--cross-file-rename",
        "--completion-parse=always",
        "--completion-style=detailed",
        "--function-arg-placeholders",
        "--header-insertion-decorators",
        "--query-driver=/usr/bin/**/clang-*,/home/adem/GCC-10/bin/g++*",
        "--header-insertion=never",
        "--limit-results=0",
        "-j=6",
        "--pch-storage=memory"
      ]
    }
  }
}
```
step 7 : reboot vim and you can use it happly.

