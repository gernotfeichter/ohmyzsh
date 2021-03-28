#source /home/anon/.oh-my-zsh/custom/plugins/helpstring-complete/_test.zsh

#autoload _test
#compdef _test test

#bindkey '^[2' _complete_help

#setopt menucomplete
#zstyle ':completion:*' menu yes

# The literal string completion, saying that this style is used by the completion system. This distinguishes the context from those used by, for example, zle widgets and ZFTP functions.
# The function, if completion is called from a named widget rather than through the normal completion system. Typically this is blank, but it is set by special widgets such as predict-on and the various functions in the Widget directory of the distribution to the name of that function, often in an abbreviated form.
# The completer currently active, the name of the function without the leading underscore and with other underscores converted to hyphens. A ‘completer’ is in overall control of how completion is to be performed; ‘complete’ is the simplest, but other completers exist to perform related tasks such as correction, or to modify the behaviour of a later completer. See Control Functions for more information.
# The command or a special -context-, just at it appears following the #compdef tag or the compdef function. Completion functions for commands that have sub-commands usually modify this field to contain the name of the command followed by a minus sign and the sub-command. For example, the completion function for the cvs command sets this field to cvs-add when completing arguments to the add subcommand.
# The argument; this indicates which command line or option argument we are completing. For command arguments this generally takes the form argument-n, where n is the number of the argument, and for arguments to options the form option-opt-n where n is the number of the argument to option opt. However, this is only the case if the command line is parsed with standard UNIX-style options and arguments, so many completions do not set this.
# The tag. As described previously, tags are used to discriminate between the types of matches a completion function can generate in a certain context. Any completion function may use any tag name it likes, but a list of the more common ones is given below.

# :completion:function:completer:command:argument:tag
#zstyle ':completion::complete:test:*:*' 
# -test-,2>

# zle -C controlFunction menu-expand-or-complete _test # menu- # list-choices # expand-or-complete 

# bindkey '^X' controlFunction

