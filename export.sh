#!/bin/bash

EXPORT_DIRPATH=`pwd`/export
ZIP_DIRPATH=`pwd`"/export/zip"

name=$1
version=$2

if [ -z "$GODOT_EXECUTABLE" ] || [ ! -f "$GODOT_EXECUTABLE" ]; then
    echo "ERROR: \$GODOT_EXECUTABLE variable is not set or does not point to valid file [$GODOT_EXECUTABLE]"
    exit 1
fi

if [ -z "$name" ]; then
    echo "ERROR: Expected a name"
    exit 1
fi

if [ -z "$version" ]; then
    echo "ERROR: Expected a version"
    exit 1
fi

rm -r "$ZIP_DIRPATH"
mkdir -p "$ZIP_DIRPATH"

function export_game {
    export_preset=$1
    export_dirname=$2
    executable_filename=$3

    export_dirpath="$EXPORT_DIRPATH"/"$export_dirname"
    rm -r "$export_dirpath"
    mkdir -p "$export_dirpath"
    
    (cd godot-project && $GODOT_EXECUTABLE --export "$export_preset" --output "$export_dirpath"/"$executable_filename")

    zip_filename="${export_dirname}_${version}.zip"
    zip_filepath="${ZIP_DIRPATH}/${zip_filename}"
    rm "$zip_filepath"
    if [ "$export_preset" == "HTML5" ]; then
        # itch.io expects index.html in root inside zip.
        (cd "$EXPORT_DIRPATH/$export_dirname" && zip -r "$zip_filepath" *)
    else
        (cd "$EXPORT_DIRPATH" && zip -r "$zip_filepath" "$export_dirname")
    fi
}

export_game "Linux/X11" "${name}_linux" "${name}_linux"
export_game "Windows Desktop" "${name}_windows" "${name}_windows.exe"
export_game "HTML5" "${name}_html" "index.html" # itch.io expects an index.html in zip

