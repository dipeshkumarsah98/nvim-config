# LazyVim - Custom Neovim Distribution

## Overview

LazyVim is a personalized distribution of Neovim (nvim), tailored to provide a seamless and efficient editing experience. This distribution includes carefully curated themes and settings, all modified to suit the preferences of the user.

## Features

- **Customized Themes:** LazyVim comes with a selection of themes that have been modified to enhance readability and aesthetics. The themes are chosen to create a visually pleasing environment for coding and text editing.

- **Optimized Settings:** The default settings of Neovim have been fine-tuned to improve performance and make the editor more intuitive. Keybindings, plugins, and configurations have been adjusted to create a comfortable and efficient workflow.

- **Plugin Integration:** LazyVim includes essential plugins to extend the functionality of Neovim. These plugins have been carefully selected and configured to work seamlessly together, providing a cohesive and powerful editing experience.

## Installation

1. Ensure you have Neovim installed on your system.

2. Clone the LazyVim repository to your preferred location:

   ```bash
    git https://github.com/dipeshkumarsah98/nvim-config.git ~/.config/nvim
   ```

3. Open Neovim and run the following command to install plugins:

   ```vim
   :PlugInstall
   ```

   This will install the necessary plugins configured for LazyVim.

4. Restart Neovim to apply the changes.

## Some of the custom shortcut of telescope

| KEY | DESCRIPTION                                                                                                 | MODE |
| --- | ----------------------------------------------------------------------------------------------------------- | ---- |
| ;f  | Lists files in your current working directory, respects .gitignore                                          | n    |
| ;r  | Search for a string in your current working directory and get results live as you type, respects .gitignore | n    |
| \\  | Lists open buffers                                                                                          | n    |
| ;t  | Lists available help tags and opens a new window with the relevant help info on <cr>                        | n    |
| ;;  | Resume the previous telescope picker                                                                        | n    |
| ;e  | Lists Diagnostics for all open buffers or a specific buffer                                                 | n    |
| ;s  | Lists Function names, variables, from Treesitter                                                            | n    |
| sf  | Open File Browser with the path of the current buffer                                                       |      |

| KEY | DESCRIPTION                           | MODE |
| --- | ------------------------------------- | ---- |
| N   | Create a new file                     | n    |
| h   | Go to parent directory                | n    |
| /   | Enter the insert mode to search files | n    |

## Customization

LazyVim is designed to be easily customizable. You can modify themes, add or remove plugins, and tweak settings according to your preferences. The configuration files are well-organized and commented for easy understanding.

To customize LazyVim, navigate to the `~/.config/nvim` directory and edit the relevant configuration files.

## Contributions

Contributions are welcome! If you have any improvements, bug fixes, or new features to suggest, feel free to open an issue or submit a pull request. Let's collaborate to make LazyVim even better!

## License

LazyVim is open-source software licensed under the [MIT License](LICENSE). Feel free to use, modify, and distribute it in accordance with the terms of the license.
