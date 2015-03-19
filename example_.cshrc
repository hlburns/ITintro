if ( -f /nerc/etc/cshrc ) source /nerc/etc/cshrc
################################################
##                                            ##
##  Example .cshrc file from Helen Burns      ##
##   Original Template from Jeff Blundell      ##
##                                            ##
################################################
# To use this file:
# cd ~
# cp -p .cshrc .cshrc_bak 
# Create symbolic link:
# ln -sf example.cshrc .cshrc
# source ./.cshrc
# Please note some mistakes with your path 
# and you can lock yourself out of the system
# this is easily rectified by mounting the 
# nocs file system through sshfs and restoring
# your .cshrc to the original 
# Or email IT!

# First I'm gonna deffine my environment 
# Then I'm gonna set up my aliases etc

set noclobber
# That just stops you from overwriting your files
# too easily 


##  Setup my Linux environment                                                                       
##  ==========================
# Have a look to see what machine you're on
# For example if you're on charon you don't 
# really want to set anything up.
if ( $?NERCARCH ) then
  if ( $NERCARCH == "linux" && $HOST_NAME != "charon" ) then
# If it's not charon then do the set up the following:
# Example here add your bin dir to your path
# Fancier ls colours
# Clean up you path with special nerc env_clean thing
     setenv PATH ${PATH}:"/noc/users/$USER/bin"
     setenv PATH `/nerc/bin/env_clean -env PATH`
     setenv LS_COLORS 'di=1;34:fi=32:ln=1;36:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
# Adding things to your library path:
     if ($?LD_LIBRARY_PATH) then
       setenv LD_LIBRARY_PATH "${LD_LIBRARY_PATH}:/usr/local/lib:/usr/lib64"
     else
       setenv LD_LIBRARY_PATH "/usr/local/lib:/usr/lib64"
     endif
  endif
endif

# Aliases 
# Don't bother typing out the full commands the
# whole time.
#~~~~~~ Here are a few useful Aliases: ~~~~~~###
# Make basic commands interactive (stop you from 
# rm * all your work)
alias cd        'cd \!*;echo $cwd'
alias cp        'cp -i'
alias mv        'mv -i'
alias rm        'rm -i'
alias pwd       'echo $cwd'
# ls in colours to show files, links etc
alias ls        'ls -F --color'
alias lsk       'ls --block-size=K'
alias lsm       'ls --block-size=M'
# Swap to bash shell (then source ./.bashrc)
alias bash      'setenv SHELL /bin/sh;exec $SHELL'

# My aliases
# PUT YOUR OWN ALIASES HERE: (e.g. hsit:)
alias hist      'history'

# Linux system access                                                                                
# ===================                                                                                
# NOCS gateway system:                                                                               
# --------------------                                                                               
alias charon    'ssh -l $USER charon'
# MSM linux systems                                                                                  
alias novel     'ssh -Y -l $USER novel'
alias noetic    'ssh -Y -l $USER noetic'
alias notion    'ssh -Y -l $USER notion'
alias nomad     'ssh -Y -l $USER nomad'
alias nonsuch   'ssh -Y -l $USER nonsuch'
alias nobble    'ssh -Y -l $USER nobble'
alias nozzle    'ssh -Y -l $USER nozzle'
# January 2009 systems                                                                               
alias noumenon  'ssh -Y -l $USER noumenon'
alias nozomi    'ssh -Y -l $USER nozomi'
alias monty     'ssh -Y -l $USER monty'
alias nostrum   'ssh -Y -l $USER nostrum'
# December 2009 systems                                                                              
alias noctuid   'ssh -Y -l $USER noctuid'
alias noema     'ssh -Y -l $USER noema'
alias nocturne  'ssh -Y -l $USER nocturne'
# Large memory data analysis system                                                                  
alias mnemosyne 'ssh -Y -l $USER mnemosyne'
#                                                                                                    
# IT group communal linux systems                                                                    
alias tethys    'ssh -Y -l $USER tethys'
alias themis    'ssh -Y -l $USER themis'
alias theia     'ssh -Y -l $USER theia'
#                                    

# This next line skips the rest if non interactive shell
if ($?USER == 0 || $?prompt == 0) exit
# Otherwise:
# Customise your promt
set prompt="`whoami`@`hostname`: "
# Stop your history from being too crazy
set history=50
# Changing permissions:
# chmod = change permissions
# og = for others and groups
# + = add permission
# - = remove permission
# wrx = write, read, execute
# 755 = make the file +wrx for everyone 
#alias +w            'chmod go+w'                                                                    
#alias -w            'chmod go-w'                                                                    
#alias x             'chmod +x' 

exit
   
