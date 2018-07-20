module.exports = {
  brew: [
    // http://conqueringthecommandline.com/book/ack_ag
    'ack',
    'ag',
    // cmake is required to compile vim bundle YouCompleteMe
    'cmake',
    // Install GNU core utilities (those that come with OS X are outdated)
    // Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
    'coreutils',
    'dos2unix',
    // Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
    'findutils',
    // 'fortune',
    'readline', // ensure gawk gets good readline
    'gawk',
    // http://www.lcdf.org/gifsicle/ (because I'm a gif junky)
    'gifsicle',
    'gnupg',
    // Install GNU `sed`, overwriting the built-in `sed`
    // so we can do "sed -i 's/foo/bar/' file" instead of "sed -i '' 's/foo/bar/' file"
    'gnu-sed --with-default-names',
    // upgrade grep so we can get things like inverted match (-v)
    'grep --with-default-names',
    // better, more recent grep
    'homebrew/dupes/grep',
    // https://github.com/jkbrzt/httpie
    'httpie',
    'imagemagick',
    'imagesnap',
    // jq is a sort of JSON grep
    'jq',
    // Mac App Store CLI: https://github.com/mas-cli/mas
    'mas',
    // Install some other useful utilities like `sponge`
    'moreutils',
    'nmap',
    'openconnect',
    'reattach-to-user-namespace',
    // better/more recent version of screen
    'homebrew/dupes/screen',
    'tmux',
    'todo-txt',
    'tree',
    'ttyrec',
    // better, more recent vim
    'vim --with-client-server --with-override-system-vi',
    'watch',
    // Install wget with IRI support
    'wget --enable-iri',
    // customizations, mana
    'hub',
    'awscli',
    'terraform',
    'sbt',
    'shfmt'
  ],
  cask: [
    //'adium',
    //'amazon-cloud-drive',
    //'atom',
    'box-sync',
    //'comicbooklover',
    //'diffmerge',
    'dropbox',
    //'evernote',
    'flux',
    'gpg-suite',
    //'ireadfast',
    'iterm2',
    'little-snitch',
    'macbreakz',
    'micro-snitch',
    'signal',
    //'macvim',
    'sizeup',
    //'sketchup',
    'slack',
    'the-unarchiver',
    //'torbrowser',
    //'transmission',
    'visual-studio-code',
    //'vlc',
    'xquartz'
  ],
  gem: [
  ],
  npm: [
    // 'antic',
    // 'buzzphrase',
    // 'eslint',
    // 'instant-markdown-d',
    // 'npm-check',
    // 'yo',
    // 'generator-dockerize',
    // 'gulp',
    'npm-check-updates',
    'prettyjson',
    'trash',
    'vtop'
    // ,'yo'
  ]
};
