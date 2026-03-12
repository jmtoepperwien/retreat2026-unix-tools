## X window-system manager
    The following section only applies to systems running X Window Manager (X11). This limits the user cases  To check if you are running X11 simply run the following command in your shell:
    `xmessage -center X11 Running`.
    

### keyboard shortcuts for commands/scripts
    On X11 keybindings can be managed thorough `xbindkeys` tool. First create the `~/.xbindkeysrc`. 
    `xbindkeys --defaults >> ~/.xbindkeysrc`
    Now you can add your own keybindings to the `~/.xbindkeysrc` file. First define the command you want to be run on the event and then describe the event. 
    ```
    # Simple open the terminal and print hello when Ctrl+Shift+e is pressed 
    "x-terminal-emulator -e 'echo hello; exec bash'"
       control+shift + e
    ```
    These keybindings can be used to both open an app or set of apps, or emulate frequently used keybindings thorough extra mouse buttons. 

### binding mouse keys to commands
    Similar to the above, extra mouse keys can also be bound to commands, simply replace the `control+shift + e` with `b:<NUMBER>` indicating the desired button index of the mouse. To find out the index of mouse button run `xev -event button | grep button` and click the buttons of your mouse inside the small pop-up window. 
    2 useful mouse keybindings for vibe-coding is provided below:
    ```
    # Ctrl+c on mouse 9
    "xte 'keydown Control_L' 'key c' 'keyup Control_L'"
       b:9
    
    # Ctrl+v on mouse 8
    "xte 'keydown Control_L' 'key v' 'keyup Control_L'"
       b:8
    ```


### layout automations with app launches 
    Finally we can run a script on a keybinding, here we will use a script to auto-load a workspace with VS Code and a browser. The script to load this workspace is already provided in the repo. You can bind this script to a keybinding as we learned before:
    ```
    "x-terminal-emulator -e '~/PATH_TO_REPO/retreat2026-unix-tools/Automations/load_workspace.sh; exec bash'"
   control+shift + e + a
   ```

    
