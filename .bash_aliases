ls=(
    /bin/ls 
    -v                      # 9 comes before 10
    --color=auto            
    --ignore='NTUSER.DAT*'  # Hide NTFS garbage
)
alias ls="${ls[*]}"

# Suggested by Habermann.
alias qq=exit
alias back='cd -'
