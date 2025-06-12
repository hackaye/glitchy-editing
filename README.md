# Glitchy editing

A devcontainer config to create an editing experience that's a bit like Glitch in a GitHub Codespace.

![editor](https://github.com/user-attachments/assets/1e0e02fb-7bff-43de-8d92-306275ca28c7)

Configs are in the devcontainer and helper directories:

* `.devcontainer/devcontainer.json` specifies the container config including scripts to run on lifecycle events and buttons to include along the bottom of the editor
* `_helpers/` includes helper bash scripts

You may need to tweak the scripts to suit your project – the defaults are designed for static websites with a build process:

* We include Node and GitHub CLI
* When the codespace opens we install modules from NPM then run whatever start command is in the `package.json`
* When a server starts at ports `3000`, `4173`, `5173`, `8080` we automatically open it for previewing inside the codespace using Simple Browser (add whatever ports your favourite framework uses)
* Output a welcome message to the Terminal
* Specify the extensions
* Hide some files and folders to make the file tree a bit less cluttered
* Hide the minimap and chat prompts
* Specify buttons for prettifying, wrapping text, opening the terminal, splitting tabs to show the preview side by side with the code, building / running, and sharing your preview link
* _TODO: Add publish button to deploy to your chosen platform_

The project contains an example Vite website but you can just delete `index.html`, `style.css`, and `vite.config.js` if you're using something else – make sure you also update the `package.json` to suit your chosen framework.

The buttons along the bottom of the editor are configured courtesy of this great extension: [VSCode Action Buttons Ext](https://marketplace.visualstudio.com/items?itemName=jkearins.action-buttons-ext) 🙌

* Add your own buttons in `devcontainer.json` to run commands you find handy!

> 📣 Feel free to open Issues and Pull Requests on this repo or @ me on [Mastodon](https://glasgow.social/@sue) or [Bluesky](https://bsky.app/profile/suesmith.Lol)
