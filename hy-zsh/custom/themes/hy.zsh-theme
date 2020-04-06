magenta=$'\e[38;5;239m'
end=$'\e[0m'
left=$magenta"["$end
right=$magenta"]"$end
shortline=${magenta}"─"${end}
darkgreen=$'\e[38;5;170m'
yellow=$'\e[38;5;214m'
red=$'\e[38;5;162m'
command_number=$left$red"%i"$end$right

green=$'\e[38;5;202m'
gitbranch="\$(git branch > /dev/null 2>&1 && git branch | grep \"*\" | awk '{ printf \"$left$green%s$end$right\", \$2 }')"
cyan=$'\e[38;5;11m'

user=${magenta}\(${end}${darkgreen}"%n"${magenta}\)${end}${end}
localhost=${left}$yellow"%M"$end${right}
headline="${magenta}┌──${end}${user}${shortline}${shortline}${localhost}$shortline$command_number$shortline${gitbranch}${end}"

cmd_prompt="%{${magenta}%}↳ %{${yellow}%}$ %{${end}%}"%{$end%}
dir=${cyan}"\(￣︶￣)Z"${end}$left"%~"$right

PROMPT="${headline}
${magenta}├${end}${dir}
$cmd_prompt"


#RR=$'\e[38;5;162m\]'
#RR=$'\e[38;5;162m'
#cmd_prompt="$%f{38}%k{5} xx>>"
#PROMPT="$cmd_prompt"
#PROMPT='%{${RR}%}xx>>'

