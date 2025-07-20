# Fonts

A handy collection of popular open-source fonts, all in one place. Comes with an easy-to-use install script to get everything set up on your system in no time.

## Included Fonts

- **FiraCode**  
- **JetBrains Mono**  
- **Noto Sans**  
- **Roboto**

All fonts are distributed under their respective open source licenses. See [FONTS_LICENSE.md](./FONTS_LICENSE.md) for detailed license information and official links.

## Installation


> [!WARNING]
> You must have Python 3.6+ and Fontconfig (`fc-cache`) installed on your system.
> For global installation, **run the installer with `sudo`** to ensure proper permissions.

### Steps

1. Clone this repository:

```bash
git clone --depth=1 https://github.com/netns/fonts.git
cd fonts
```
2. Run the installation script script with desired options:

```bash
python3 install.py [options]
```

### Installer Options

| Option              | Description                                                               |
| ------------------- | ------------------------------------------------------------------------- |
| `-l, --local`       | Install fonts locally (default: `~/.local/share/fonts`)                   |
| `-g, --global`      | Install fonts globally (requires sudo; default: `/usr/local/share/fonts`) |
| `-f, --font=<path>` | Source directory containing font files (default: `./fonts`)               |
| `-h, --help`        | Show this help message and exit                                           |

> [!TIP]
> You can check available fonts after installation by running fc-list.

### Examples

Install locally using the default fonts directory:

```bash
python3 install.py --local
```

Install globally specifying a custom fonts directory:

```bash
sudo python3 install.py --global --font=/path/to/fonts
```

> [!NOTE]
> If you skip the -l or -g options, the installer defaults to local installation.

## License

- The installation scripts and any code in this repository are licensed under the MIT License. See the [LICENSE](./LICENSE) file for details.

- The fonts themselves retain their original licenses. Please refer to [FONTS_LICENSE.md](./FONTS_LICENSE.md) for full license details

## Contribution
Contributions are welcome! Feel free to open issues or submit pull requests to improve font selection, installation scripts, or documentation.

## Disclaimer
This repository respects the licensing terms of all included fonts. Redistribution is done in compliance with each font’s license. The author is not responsible for any issues arising from font installation or usage.
