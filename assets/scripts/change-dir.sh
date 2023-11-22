#!/bin/bash

# Controlla se è stato fornito un argomento
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 new_subpath"
    exit 1
fi

# Percorso dello script da modificare
SCRIPT_PATH="/usr/bin/name-the-screenshot.sh"

# Nuovo subpath (passato come argomento)
NEW_SUBPATH="$1"

# Modifica la parte del percorso nello script mantenendo la parte iniziale
sed -i "s|default_dir=~/Github/Triennale/.*|default_dir=~/Github/Triennale/$NEW_SUBPATH|" $SCRIPT_PATH
