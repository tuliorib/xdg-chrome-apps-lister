# xdg-chrome-apps-lister
# Chrome App Lister

   Chrome App Lister is a Bash script that lists installed Chrome apps and Progressive Web Apps (PWAs) on your Linux system.

   ## Features

   - Lists Chrome apps and PWAs installed in the user's local applications directory
   - Displays app names and corresponding .desktop filenames or Exec commands
   - Handles complex .desktop files with multiple entries

   ## Requirements

   - Bash shell
   - Linux operating system
   - Chrome or Chromium browser with installed PWAs

   ## Quick Start

   1. Clone this repository
   2. Make the script executable: `chmod +x src/list-chrome-apps.sh`
   3. Run the script: `./src/list-chrome-apps.sh`

   For detailed installation and usage instructions, please refer to the [Installation Guide](docs/INSTALLATION.md) and [Usage Guide](docs/USAGE.md).

   ## Contributing

   Contributions are welcome! Please feel free to submit a Pull Request.

   ## License

   This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

  - New -E flag to display full Exec commands instead of filenames

