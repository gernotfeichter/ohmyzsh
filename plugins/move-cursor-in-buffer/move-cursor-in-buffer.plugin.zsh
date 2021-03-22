move-cursor-in-buffer-to-beginning() {
  CURSOR=0
  return 0
}

move-cursor-in-buffer-to-end() {
  CURSOR=${#BUFFER}
  return 0
}

zle -N move-cursor-in-buffer-to-beginning
zle -N move-cursor-in-buffer-to-end
