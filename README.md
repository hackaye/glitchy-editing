# Glitchy editing

A devcontainer config to create an editing experience that's a bit like Glitch in a GitHub Codespace.

![editor](https://github.com/user-attachments/assets/abe6dd24-b77b-4c4b-a653-dc5003984b8f)

* Click **Use this template** and **Create a new repository**
* In your repo, open the site in a codespace by clicking **Code** > **Codespaces** and creating a new codespace on your main branch. 

<img alt="Create codespace" src="https://github.com/user-attachments/assets/cb29a8da-d1ac-42f5-962c-7d43b8011324" width="400px"/><br/>

Give the codespace a minute or two to start up – it'll attempt to automatically build and preview your new website.

> Along the bottom you'll see buttons:
>
> 🌈 Prettify your code
> 
> 💻 Open the Terminal
> 
> 🪗 Wrap your lines
> 
> 🔎 Split to show your code and preview side by side
> 
> 🎡 Run your local site
> 
> 🔗 Share your dev address at the codespace port
> 
> 🚧 Build your site for production

## How this project works

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
* Specify the buttons to include at the bottom
* _TODO: Add publish button to deploy to your chosen platform_

The project contains an example Vite website but you can just delete `index.html`, `style.css`, and `vite.config.js` if you're using something else – make sure you also update the `package.json` to suit your chosen framework.

The buttons along the bottom of the editor are configured courtesy of this great extension: [VSCode Action Buttons Ext](https://marketplace.visualstudio.com/items?itemName=jkearins.action-buttons-ext) 🙌

* Add your own buttons in `devcontainer.json` to run commands you find handy!

## Publish your site

The default project contents will dump your website files in `docs/` when you run the build command, which lets you deploy to GitHub Pages:

![Pages settings](https://github.com/user-attachments/assets/21e853ee-b59e-43ad-8b3e-ce10eef455c4)

* Navigate to your repo **Settings**
* In **Pages** choose **Deploy from a branch**
* Select `main` and the `/docs` folder
* Click **Save** and hopefully GitHub will deploy your site!
  * It'll be at `your-username.github.io/your-repo`
* When you commit to your branch your changes will automatically deploy

## Save your edits to GitHub

GitHub will keep the edits you make in the codespace only for a limited time, so it's a good idea to commit your work to a repo regularly. Use the **Source Control** button on the left of the editor – if you aren't bothered about branching etc just enter a commit message, commit, confirm, then click the sync button. 

<img alt="source control" src="https://github.com/user-attachments/assets/a5160b08-4f80-4a5f-af76-bde18a43427d" width="300px"/>

> GitHub will notify you if any of your codespaces are about to expire. If you have changes you want to keep, you can use the **Export changes to a branch** option.
> 
> <img alt="export to branch" width="500px" src="https://github.com/user-attachments/assets/c7815347-3e5a-4e34-97f2-db58343acaa4"/>

> 🤑 You will likely be asked for a credit card at some point to continue using Codespaces – _I believe_ you can enter one but set the spending limit to zero to keep your usage within the free tier.

## Make this better!

📣 Feel free to open Issues and Pull Requests on this repo or @ me on [Mastodon](https://glasgow.social/@sue) or [Bluesky](https://bsky.app/profile/suesmith.lol)
