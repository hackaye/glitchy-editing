# Glitchy editing

A devcontainer config to create an editing experience that's a bit like Glitch in a GitHub Codespace.

![editor](https://github.com/user-attachments/assets/efaf9235-9fe8-4772-99c6-aad399c206d0)

Configs are in the devcontainer and helper directories:

* `.devcontainer/devcontainer.json` specifies the container config including scripts to run on lifecycle events and buttons to include along the bottom of the editor
* `_helpers/` includes helper bash scripts

You may need to tweak the scripts to suit your project – the defaults are designed for static websites with a build process:

* Include Node and GitHub CLI
* When the codespace opens we install modules from NPM then run whatever start command is in the `package.json`
* When a server starts at ports `3000`, `4173`, `5173`, `8080` we automatically open it for previewing inside the codespace using Simple Browser (add whatever ports your favourite framework uses)
* Output a welcome message to the Terminal
* Specify the ESLint and VSCode Action Buttons Ext extensions
* Hide some files and folders to make the file tree a bit less cluttered
* Hide the minimap and chat prompts
* Specify buttons for prettifying, wrapping text, opening the terminal, splitting tabs to show the preview side by side with the code, building / running, and sharing your preview link
* _TODO: Add publish button to deploy to your chosen platform_

The project contains an example Vite website but you can just delete `index.html`, `style.css`, and `vite.config.js` if you're using something else – make sure you also update the `package.json` to suit your chosen framework.
