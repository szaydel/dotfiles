#!/usr/bin/env zsh

alias t='~/src/t/t.py --task-dir="~/tasks"'
alias m='~/src/t/t.py --task-dir="~/tasks" --list=music'
alias g='~/src/t/t.py --task-dir="~/tasks" --list=groceries'
alias k='~/src/t/t.py --task-dir="~/tasks" --list=books'
alias p='~/src/t/t.py --task-dir="~/tasks" --list=pack'
alias b='~/src/t/t.py --list=bugs'

alias pa='~/src/t/t.py --task-dir="~/tasks" --list=pack-archive'
function packfor() {
    cp "$HOME/tasks/pack-archive" "$HOME/tasks/pack";
    touch "$HOME/tasks/.pack.done"
    hg --cwd ~/tasks add 'pack' '.pack.done';
    hg -R ~/tasks commit -m 'Starting to pack.'
}
