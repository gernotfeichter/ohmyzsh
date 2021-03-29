function checkAndHandleContinuationPrompt {
    if [ "${CONTEXT}" = "cont" ]
    then
        echo "executing push-line-or-edit"
        ZSH_MULTILINE_RECOVER="true"
        zle push-line-or-edit
    fi
}

function checkAndHandleMultilineRecover {
    #echo "ZSH_MULTILINE_RECOVER=${ZSH_MULTILINE_RECOVER}"
    if [ "${ZSH_MULTILINE_RECOVER}" = "true" ]
    then
        echo "executing clear-screen"
        zle clear-screen
        #zle send-break
        #zle up-history
        ZSH_MULTILINE_RECOVER="false"
    fi
}

function zle-line-init {
    checkAndHandleContinuationPrompt
    checkAndHandleMultilineRecover
}

function multiline() {
    # echo "INFO: executing multiline start"
    # echo "BUFFER: ${BUFFER}"
    # echo "BUFFERLINES: ${BUFFERLINES}"
    # echo "CONTEXT: ${CONTEXT}"
    if [[ "${CONTEXT}" = "start" || "${CONTEXT}" = "select" || "${CONTEXT}" = "vared" ]]
    then
        zle accept-line
    else
        checkAndHandleContinuationPrompt
    fi
    # echo "INFO: executing multiline end"
}

# TODO: docu
ZSH_MULTILINE_RECOVER="false"

zle -N multiline
bindkey "^X" multiline
bindkey '^M' multiline
