# Julien's dotfiles

## Contents

What's in there?

- all my `brew` dependencies including: applications, fonts, etc. See [`Brewfile`](https://github.com/jkernech/dotfiles/blob/master/Brewfile)
- all my `macOS` configuration. See [`macos`](https://github.com/jkernech/dotfiles/blob/master/macos/)
- all my shell configuration. See [`shell/`](https://github.com/jkernech/dotfiles/tree/master/shell) and [`config/zshrc`](https://github.com/jkernech/dotfiles/blob/master/config/zshrc)
- all my `vscode` configuration. See [`vscode/`](https://github.com/jkernech/dotfiles/tree/master/vscode)
- all my [QuickLook](https://github.com/sindresorhus/quick-look-plugins) customizations and [dev utilities](https://github.com/sbarex/SourceCodeSyntaxHighlight)


## Main principles

- Minimalism in everything: tooling, styling,
- Simplicity
- Reduced visual noise, only important things should be shown
- "Please, do not touch my code": no auto-formatting or code flow interruptions
- History is valuable, let's preserve it everywhere we can
- Security: do not share anything with anyone


## Installation

We are using [`dotbot`](https://github.com/anishathalye/dotbot/)
to set things up. Steps:

0. Decide what you want to install: comment out `run_dotbot 'steps/...'` that you don't need
1. Clone this repo with: `git clone https://github.com/jkernech/dotfiles dotfiles`
2. `cd dotfiles/`
3. Run: [`bash ./install`](https://github.com/jkernech/dotfiles/blob/master/install)


## CLI

I am using [`hyper`](https://hyper.is/) as my main terminal.
I am using [`zsh`](https://github.com/zsh-users/zsh) with [`oh-my-zsh`](https://github.com/robbyrussell/oh-my-zsh)
as the main shell.
And [`zplug`](https://github.com/zplug/zplug) to manage shell [plugins](https://github.com/jkernech/dotfiles/blob/master/config/zplugrc).
I also have a some tools / scripts / aliases to make my working experience better.
But, I try to keep them minimal: only ones I truly use.

I mainly work with:

- `python`

I also have several other languages installed.
But I don't use them on a daily basis:

- `node`
- `elixir`
- `go`
- `rust`


## Apps

I am using [`brew`](https://brew.sh/) to install all free apps for my mac.
I also sync apps from AppStore with `brew` via [`mas`](https://formulae.brew.sh/formula/mas),
so the resulting [`Brewfile`](https://github.com/jkernech/dotfiles/blob/master/Brewfile) contains everything.


## Infrastructure

I try to containerize everything.
So, [`docker`](https://formulae.brew.sh/cask/docker) is my main development and deployment tool.


## VS Code

I try to keep my `vscode` setup as simple as possible.
It was also heavily influenced by [`makevscodeawesome`](https://makevscodeawesome.com/).

I also use [powered-up `nano`](https://github.com/jkernech/dotfiles/blob/master/config/nanorc)
for in-terminal editing.


## Local configuration

Some of the used tools requires local configuration. Such as `git` with username and email.

Here's the full list:

1. `~/.gitconfig.local` to store any user-specific data
2. `~/.shell.local` to store local shell config, like: usernames, passwords, tokens, `gpg` keys and so on


## Credits

Heavily inspired by [sobolevn's dotfiles](https://github.com/sobolevn/dotfiles).
