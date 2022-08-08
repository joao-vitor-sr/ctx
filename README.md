# ctx

_ctx_ is a script to convert variables in a file into a xrdb based content

## Install

If on `linux` and installed using make, run `sudo make uninstall-old` first

1. Run the following commands

```
git clone https://github.com/joao-vitor-sr/ctx
cd ctx
sudo make install doc
```

- If you wish to not install documentation (highly unrecommended) run `sudo make install` instead

### Usage

To use on a config file run `ctx path/to/config_file.ini path/to/output_file.ini`

_the config file filetype can be of any type_

**The config file**

```
[general]
background-color = $xrdb.*background:
key = 1234
```

**The output file**

```
[general]
background-color = #000 (This color is defined by the Xresources file)
key = 1234
```
