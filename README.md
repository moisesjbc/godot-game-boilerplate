# godot-game-boilerplate

This is a simple Godot 3.2 engine project including dummy menus (main menú, credits and how to play) and a dummy main scene.

This project also includes a simple `export.sh` script (Linux only) for exporting project to multiple platforms (Windows, Linux and HTML).

## Exporting (Linux only)

1. Set the environment variable to a path pointing to Godot Engine executable. ie.

        export GODOT_EXECUTABLE=<path-to-godot-engine>

    For example:

        export GODOT_EXECUTABLE=/opt/godot-engine/Godot_v3.0.6-stable_x11.64

2. Run the export script. Packages will be generated in `export/` and `export/zip` directories.

        bash export.sh <game-name> <version>

    For example:

        bash export.sh awesome-game v1.0
