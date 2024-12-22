if status is-interactive
	set fish_greeting
	fastfetch
end

function fish_prompt
     set_color blue
        printf "-[%s]" (prompt_pwd)
        echo ' 
 '
end

alias ls="eza --icons"
alias tree="eza --icons --tree"
alias cl="clear"
alias nv="nvim"
alias dnf="sudo dnf update"
alias dnfi="sudo dnf install"
alias dnfr="sudo dnf remove"
alias fm="yazi"
