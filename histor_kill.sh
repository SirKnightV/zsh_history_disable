#!/bin/bash

# Obtener el nombre de usuario actual
username=$(whoami)

# Ruta al archivo .zshrc del usuario actual
zshrc_file="/home/$username/.zshrc"

# Agregar las líneas al final del archivo .zshrc del usuario actual
echo '
rm "/home/'$username'/.zsh_history"
clear
unset HISTFILE
unset HISTSIZE
unset HISTFILESIZE
' >> "$zshrc_file"

# Mostrar un mensaje indicando que se ha actualizado el archivo .zshrc del usuario actual
echo "Configuración para $zshrc_file completada."

# Ruta al archivo .zshrc del usuario root
root_zshrc_file="/root/.zshrc"

# Agregar las líneas al final del archivo .zshrc del usuario root
echo '
rm "/root/.zsh_history"
clear
unset HISTFILE
unset HISTSIZE
unset HISTFILESIZE
' | sudo tee -a "$root_zshrc_file" > /dev/null

# Mostrar un mensaje indicando que se ha actualizado el archivo .zshrc del usuario root
echo "Configuración para $root_zshrc_file completada."
