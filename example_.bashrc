################################################
##                                            ##
##  Example .bashrc file from Helen Burns     ##
##                                            ##
##                                            ##
################################################
# To use this file:
# cd ~
# cp -p .bashrc .bashrc_bak 
# Create symbolic link:
# ln -sf example.bashrc .bashrc
# source ./.bashrc
# Please note some mistakes with your path 
# and you can lock yourself out of the system
# this is easily rectified by restoring
# your .bashrc to the original 
# Or email IT!


# A few things for all windows:
# If not running interactively, don't do anything                                                   
[ -z "$PS1" ] && return
# Set the title of the terminal to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac
# enable color support of ls and grep
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
# Set the promt to username@host:
PS1="`whoami`@\h: "
#####################################################################                                
##                                                                 ##                                
##                         MY ALIASES                              ##                                
##                                                                 ##                                
#####################################################################
alias la='ls -A'
alias rm='rm -i'
# Linux system access                                                                                
# ===================                                                                                
# NOCS gateway system:                                                                               
# -------------------- 
alias charon='ssh -Y charon'
# MSM linux systems                                                                                  
alias novel='ssh -Y novel'
alias noetic='ssh -Y noetic'
alias notion='ssh -Y notion'
alias nomad='ssh -Y nomad'
alias nonsuch='ssh -Y nonsuch'
alias nobble='ssh -Y nobble'
alias nozzle='ssh -Y nozzle'
# January 2009 systems                                                                               
alias noumenon='ssh -Y noumenon'
alias nozomi='ssh -Y nozomi'
alias monty='ssh -Y monty'
alias nostrum='ssh -Y nostrum'
# December 2009 systems                                                                              
alias noctuid='ssh -Y noctuid'
alias noema='ssh -Y noema'
alias nocturne='ssh -Y nocturne'
# Large memory data analysis system                                                                  
alias mnemosyne='ssh -Y mnemosyne'
#                                                                                                    
# IT group communal linux systems                                                                    
alias tethys='ssh -Y tethys'
alias themis='ssh -Y themis'
alias theia='ssh -Y theia'
#  
#~~~~~~~~~~~~~~~~ Setup my Linux Environment ~~~~~~~~~~~~~~~~~~~~~~~                                
                                                                                                 
#=================================================================                                  
                                                                                                   
   
if [ "$(hostname)" != "charon" ]; then
# If you're not on the gateway machine start setting stuff up:
# Here is where you would deffine stuff for all 
# You may wish to edit your path it's slightly different from csh!
export PATH="/noc/users/$USER/bin:$PATH"                                                  
       if [ "$(uname -a | grep -e "x86_64 x86_64 x86_64" | wc -l)" -gt "0" ]; then
#     Linux x86_64 systems                                                                        
                                                                                                     
#     Sometimes different machines require different stuff 
#     this would be an example to set stuff up on themis, tethys,
#     theia, mnemosyne etc. It looks for what kind of machine in 
#     the if loop - In the future NOCs systems may have machines
#     with centos (red hat) that will require an addtional if loop 
        fi
fi                       
