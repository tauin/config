#! /bin/bash

# ISC License
#
# Copyright (c) 2022 Johannes Richard Levi Dickenson

# Permission to use, copy, modify, and/or distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
# REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY
# AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
# INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM
# LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
# OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
# PERFORMANCE OF THIS SOFTWARE.

# XDG CONFIG
# Ideally this would be set by systemd-homed
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.local/cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state
export INPUTRC=$XDG_CONFIG_HOME/readline/inputrc

# History settings
export HISTSIZE=5000
export HISTFILESIZE=50000
HISTCONTROL=ignoreboth
HISTIGNORE='ls:ll:ls -alh:pwd:clear:history'
HISTTIMEFORMAT='%F %T '
shopt -s histappend cmdhist histverify autocd

#OTHER
set -o vi
PS1="λ [\w]-> " # The same as powershell, without the git prompt ofc
export EDITOR=nvim
# shellcheck source=/dev/null
if [ -f /etc/bash_completion ]; then
  source /etc/bash_completion
fi
