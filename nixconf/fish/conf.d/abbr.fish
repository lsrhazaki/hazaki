if status is-interactive
    abbr --add ftf fastfetch
    abbr --add bi 'brew install '
    abbr --add binfo 'brew info'
    abbr --add brews 'brew list'
    abbr --add casks 'brew list --cask'
    abbr --add cl clear
    # abbr --add cls '$DROPBOX/Clients'
    abbr --add co 'code-insiders '
    abbr --add con 'code-insiders -n .'
    abbr --add cargos 'cargo install --list'
    abbr --add config '~/.config/'
    abbr --add local '~/.local/'
    abbr --add coo 'code-insiders -r .'
    abbr --add dls '~/Downloads/'
    abbr --add music '~/Music/'
    abbr --add images '~/Images/'
    abbr --add gems 'gem list'
    abbr --add gg 'go get GITHUB_URL'
    abbr --add ghw 'gh repo view --web'
    abbr --add ghpr 'gh pr create -a "@me" --fill'
    abbr --add ghm --set-cursor 'gh pr merge % --merge'
    abbr --add ghr --set-cursor 'gh release create v% --generate-notes --latest'
    abbr --add ghce 'gh copilot explain %'
    abbr --add ghcs 'gh copilot suggest'
    abbr --add ghcc 'gh copilot config'
    abbr --add ghca 'gh copilot alias'
    abbr --add goo 'cd ~/.go/'
    abbr --add npms 'npm list -g --depth=0'
    abbr --add pns 'pnpm list -g'
    abbr --add pnpms 'pnpm list -g'
    abbr --add buns 'bun pm ls -g'
    abbr --add siz 'du -khsc'
    abbr --add sp speedtest
    abbr --add grabit 'wget -mkEpnp url_here'
    abbr --add link 'ln -s'
    abbr --add symlink 'ln -s'
    abbr --add amux 'tmux at -t base'
    abbr --add tkill 'tmux kill-session -t'
    abbr --add nmux 'tmux new -s "base"'
    abbr --add vim vim
    abbr --add wrg wrangler
    abbr --add usebash 'chsh -s $(which bash)'
    abbr --add usezsh 'chsh -s $(which zsh)'
    abbr --add upp topgrade
    abbr --add psrv 'php -S localhost:8888'
    abbr --add tmux zellij
    abbr --add omp oh-my-posh
    abbr --add newcode 'npx --package yo --package generator-code -- yo code'
   
    # git
    abbr --add ga git add
    abbr --add gc git commit
    abbr --add gcm git commit -m
    abbr --add gca git commit --ammend
    abbr --add gcl git clone
    abbr --add gclone 'git clone git@github.com:lsrhazaki/'
    abbr --add gco git checkout
    abbr --add gp git push
    abbr --add gpl git pull


end