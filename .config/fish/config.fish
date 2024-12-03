if status is-interactive
	set fish_greeting
	fastfetch
end

function fish_prompt
    set_color blue
    printf "%s" (prompt_pwd)
    echo ' 
> '
    end
