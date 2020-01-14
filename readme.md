# Mac Setup

## Applications

**Note:** Make sure that you move each of the following applications from the downloads folder to the Applications folder.

### [Chrome](https://www.google.com/chrome)

Once downloaded, go to the [Chrome Webstore](https://chrome.google.com/webstore).
Once there, search for **React Developer Tools** and **Redux Devtools** and install them both.

### [Iterm2](https://www.iterm2.com/downloads.html)

Make sure to do these next commands in order.

1. Install **Command Line Developer tools**
   a. Do this by typing `xcode-select --install`
1. Install **homebrew**
   a. Do this by typing `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"` and follow through the prompts.
1. Install **yarn** (Must have homebrew installed first)
   a. Do this by typing `brew install yarn`
1. Install **oh-my-zsh**
   a. Do this by typing `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
   b. When asked if you want to change your default shell to zsh, type "y" and hit enter, then type in your password.
1. Change default npm install directory.
   a. type `cd && mkdir .npm-packages`
   a. type `pwd | tr -d '\n' | pbcopy` - this will copy your home directory location to your clipboard.
   b. type `open ~/.zshrc`. This should open your zsh config file in TextEdit.
   c. scroll to the bottom and type this line:

Follow the instructions below to get your terminal setup to the way we have it in class.

1. In the top menu, click on **Iterm2** and navigate to **Preferences**
1. Click on the **Profiles** Tab
1. At the bottom on the left, you'll see a "**+**" button, Click on that to add a new profile. Name the profile "Visor".
1. After you name the profile, once again on the bottom left, click **Other Actions** and click on **Set as Default**. Make sure that the Visor profile on the left side of the screen has a star next to it. If it doesn't, select the profile and repeat this step.
1.

### [Visual Studio Code](https://code.visualstudio.com/)

### [Slack](https://www.slack.com/downloads/mac)

### [Postman](https://getpostman.com/downloads)

### [Mysql Workbench](https://dev.mysql.com/downloads/workbench)

### [Team Viewer](https://teamviewer.com/en-us/download/mac-os/) (Optional)
