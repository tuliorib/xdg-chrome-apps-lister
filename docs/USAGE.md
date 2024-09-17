# Usage Guide

   This guide explains how to use the Chrome App Lister.

   ## Basic Usage

   Run the script from the command line:

   ```
   ./src/list-chrome-apps.sh
   ```

   If you've added the script to your PATH, you can run it from anywhere:

   ```
   list-chrome-apps.sh
   ```

   ## Output

   The script will output a table with two columns:
   1. Name: The name of the Chrome app or PWA
   2. Filename: The corresponding .desktop filename

   Example output:
   ```
   Name                           Filename
   ------------------------------------------------------------
   Google Docs                    chrome-aohghmighlieiainnegkcijnfilokake-Default.desktop
   YouTube                        chrome-agimnkijcaahngcdmfeangaknmldooml-Default.desktop
   ```

   ## Troubleshooting

   If you encounter any issues, please check the following:
   - Ensure you have Chrome or Chromium installed with PWAs
   - Verify that the `~/.local/share/applications` directory exists and contains .desktop files
   - Check that you have the necessary permissions to read the .desktop files
   ```


## New Feature: Display Exec Commands

To display the full Exec commands for Chrome apps instead of filenames, use the -E flag:

```
./list-chrome-apps.sh -E
```

This will show the Name and corresponding Exec Command for each Chrome app or PWA.

