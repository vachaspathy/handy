#set -x HOMEBREW_GITHUB_API_TOKEN xxx
set -gx GITHUB_USER vachaspathy

set -x PATH $PATH /sbin/ $HOME/.rbenv/shims $HOME/.pyenv/shims/
set -U EDITOR vim

set -gx CDPATH $CDPATH . $HOME/workspace/

# directory movement aliases
alias ..    'cd ..'
alias ..2   'cd ../..'
alias ..3  'cd ../../..'
alias ..4 'cd ../../../..'

function ll
    ls -lsah $argv
end

# pyenv
pyenv init - | source

# Fish Prompt

function cwd_name
  pwd | xargs basename
end

set -gx __fish_git_prompt_showdirtystate 1
set -gx __fish_git_prompt_showstashstate 1
set -gx __fish_git_prompt_showuntrackedfiles 1
set -gx __fish_git_prompt_showupstream 'auto'
set -gx __fish_git_prompt_color 'yellow'
set -gx __fish_git_prompt_color_prefix normal
set -gx __fish_git_prompt_color_suffix normal
set -gx __fish_git_prompt_char_stagedstate '✗'
set -gx __fish_git_prompt_char_untrackedfiles '?'
set -gx __fish_git_prompt_char_dirtystate '+'
set -gx __fish_git_prompt_char_upstream_equal 

function fish_prompt
  printf '%s%s%s%s%s%s%s ' (set_color 'yellow') '➜  ' (set_color 'green') (cwd_name) (set_color normal) (__fish_git_prompt ' git:(%s)')
end

# Turn of Fish Greeting
set -gx fish_greeting
