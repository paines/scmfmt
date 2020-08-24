# scmfmt
  - A simple sexp pretty printter which works on stdin / stdout

# Installation

```sh
sudo chicken-install scmfmt
```

or clone the repo, enter the directory and exectue 

```sh
sudo chicken-install 
```

This will place an scmfmt executable in your PATH.


# Testing

```sh
scmfmt < yourFile.scm
```

You can also:
  - use vscode extension named "External formatters" to enable this extension if you add 
 
```sh
 "externalFormatters.languages": {
        "scheme": {
            "command": "scmfmt",
        }
    }
```

to settings.json located in ~/.config/Code/User/settings.json or @ext:steefh.external-formatters.

Once enabled you can use Ctrl-Shift+I to format the document.
