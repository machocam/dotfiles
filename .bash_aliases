# Search in notes directory
alias sn="rg . ~/dox/vitz/notes| fzf -e --preview='echo {} | cut -d : -f 1 | xargs cat' --preview-window=wrap | cut -d : -f 1 | xargs -o -r nvim"

# Insert new note to notes directory
alias nn='read -p "name of your note: " note_name && date_name=$(date +%F) && tot_name="${date_name}_${note_name}.md" && nvim ~/dox/vitz/notes/$tot_name'

# Create new five minute journal entry
alias nj='date_name=$(date +%F) && note_name="${date_name}_five_minute_journal.md" && touch  ~/dox/vitz/notes/$note_name && cat ~/templates/five_minute_journal.md > ~/dox/vitz/notes/$note_name && nvim ~/dox/vitz/notes/$note_name'

# todo-txt alias with options
alias t='todo-txt -at'

# Using only nvim from now on. VIM has too many small issues out of the box which need to get fixed.  
alias vim='nvim'

# Edit the day's journal entry 
alias editjournal='date_name=$(date +%F) && note_name="${date_name}_five_minute_journal.md" && nvim ~/dox/vitz/notes/$note_name'

# Update, upgrade and cleanup packages with apt
alias updateme='sudo apt update && sudo apt upgrade && sudo apt autoremove' 

# Python3 still needs to be explicitly indicated. Making it default. 
alias python='python3'

# Pring my ip address
alias myip="echo $(ifconfig | grep broadcast | awk '{print $2}')"

# Push OBTF file to gitlab 
alias stodo="cd /home/mixcocam/dox/vitz/notes/templates/rodrigo_todo/ && git add . && git commit -m 'update' && git push"
