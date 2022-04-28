# dotfiles

1. Update macOS to the latest version through system preferences

2. Clone this repository onto ~/.dotfiles
    ```zsh
    git clone https://github.com/Mistrie/dotfiles.git ~/.dotfiles
    ```

3. [Generate a new public and private SSH key](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) by running:
    ```zsh
    ~/.dotfiles/ssh.sh "<your-email-address>"
    ```

4. Run the installation with:
    ```zsh
    ~/.dotfiles/install.sh
    ```
