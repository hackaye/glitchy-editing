# Glitchy editing

A devcontainer config to create an editing experience that's a bit like Glitch in a GitHub Codespace.

[pic to follow]

Configs are in the devcontainer and helper directories:

* `.devcontainer/devcontainer.json` specifies the container config including scripts to run on lifecycle events and buttons to include along the bottom of the editor
* `_helpers/` includes helper bash scripts

You may need to tweak the scripts to suit your project – the defaults are designed for static websites with a build process:

* Include Node and GitHub CLI
* When the codespace opens we install modules from NPM then run whatever build + start commands are in the `package.json`
* When a server starts at ports `3000`, `4173`, `5173`, `8080` we automatically open it for previewing inside the codespace using Simple Browser (add whatever ports your favourite framework uses)
* Output a welcome message to the Terminal
* Specify the ESLint and VSCode Action Buttons Ext extensions
* Hide some files and folders to make the file tree a bit less cluttered
* Hide the minimap and chat prompts
* Specify buttons for prettifying, opening the terminal, splitting tabs to show the preview side by side with the code, and sharing your preview link

Change it to suit yourself!
