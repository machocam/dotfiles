# Search in notes directory
alias sn="rg . ~/dox/notes| fzf -e --preview='echo {} | cut -d : -f 1 | xargs cat' --preview-window=wrap | cut -d : -f 1 | xargs -o -r nvim"

# Insert new note to notes directory
alias nn='read -p "name of your note: " note_name && date_name=$(date +%F) && tot_name="${date_name}_${note_name}.md" && nvim ~/dox/notes/$tot_name'

# Create new five minute journal entry
alias nj='date_name=$(date +%F) && note_name="${date_name}_five_minute_journal.md" && touch  ~/dox/notes/$note_name && cat ~/templates/five_minute_journal.md >> ~/dox/notes/$note_name && nvim ~/dox/notes/$note_name'

# Insert new note to notes directory
alias nc='read -p "name of your note: " note_name && date_name=$(date +%F) && tot_name="${date_name}_${note_name}.md"&& touch ~/dox/notes/$tot_name && cat ~/templates/call_note.md >> ~/dox/notes/$tot_name && nvim ~/dox/notes/$tot_name'

# todo-txt alias with options
alias t='todo-txt -at'
