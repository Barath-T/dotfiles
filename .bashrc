#only ps1
__git_ps1() {
    local branch=$(git symbolic-ref --short -q HEAD 2>/dev/null)
    if [ -n "$branch" ]; then
        echo "[$branch]"
    fi
}

PS1='\[\e[0;36m\]\u\[\e[0;33m\]@\h\[\e[0;36m\]:\[\e[0;32m\]\w\[\e[0;31m\] $(__git_ps1 " [%s]")\[\e[0m\]\n\[\e[0;35m\]➜ \[\e[0m\]'
