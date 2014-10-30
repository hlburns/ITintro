if ( -f  /nerc/etc/login ) source /nerc/etc/login
##################################################################                                   
##                                                              ##                                  
##        .login file                                           ##                                   
##                                                              ## 
##        Read in after the .cshrc file when you log in.        ##
##        Not read in for subsequent shells.  For setting up    ##                                   
##        terminal and global environment characteristics.      ##                                   
##                                                              ##                                   
################################################################## 

# New (Solaris-compatible) version with added outer loop.                                            
if ( ! ${?DT} ) then
  if ( $TERM == "sun-cmd" || $TERM == "dtterm" || $TERM == "xterm" ) then
        setenv ETERM $TERM
  else
        setenv ETERM vt100
  endif
endif

##  Setup my Linux environment                                                                       
##  =========================                                                                       
## For some machines you need to set different things
## We'll start just setting up for everymachine but
## charon
if ( $?NERCARCH ) then
  if ( $NERCARCH == "linux" && $HOST_NAME != "charon" ) then
# NOCS uses the "setup" command to load in programmes like emacs and matlab
# On some systems you uses modules and eventually they will all be this way
# Most of the machines are done with setup so that's what we'll do here
# add in another if loop to check operating system and swap between modules
# and setup (when necessary)
     setup v2012a matlab
     setup v23.2 emacs
     setup v4.3.1 gcc
     setup v4.0.8 nco
     setup v2.1.2 ncview
     v2014.10.29 anaconda  
  endif
endif

# type setup to find list of programmes
# to use nco you need gcc for some missing libraries
# Speak to Jeff for better builds of the nco stuff though
# Anaconda is currently under testing (Nov2014) but will become 
# the default python package and is recommended for python users!
# You have the oppotunity to kick that matlab habit now (swap to python! ) 
setenv ERESIZE 'no'
setenv NEINIT 'key ] = csle'
exit