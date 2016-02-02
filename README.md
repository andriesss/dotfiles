dotfiles based on [thoughtbot](https://github.com/thoughtbot/dotfiles)

For easy rc management install [rcm](https://robots.thoughtbot.com/rcm-for-rc-files-in-dotfiles-repos)

For beautiful colours in diffs and logs install [grc](https://github.com/garabik/grc)
```
apt-get install grc
```

Or, on a real OS:

```
brew install grc
```

For faster searching, completions and general sanity, install `silversearcher-ag` (It is like grep or ack, but faster.)
```
apt-get install silversearcher-ag
```

Or, on a real OS:

```
brew install silversearcher-ag
```

For fuzy find, install [fzf](https://github.com/junegunn/fzf)
```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

Or, on a real OS:

```
brew install fzf
/usr/local/opt/fzf/install
```

For personal settings create a `dotfiles-local` folder in your home folder and create the files there. For example:

File: `~/dotfiles-local/gitconfig.local`

Contents:
```
[user]
  email = simon@nonofyarbusiness.aaarg
  name = Simon the Pirate
```

These .local files are symlinked into the home folder (`~/.gitconfig.local`) and sourced or included by the files in this repo.
