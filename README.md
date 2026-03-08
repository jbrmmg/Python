# WordScanner

A tkinter GUI tool to help solve [Wordle](https://www.nytimes.com/games/wordle/index.html) by filtering a word list based on your clues.

## What it does

After each Wordle guess you get coloured feedback — WordScanner lets you encode that feedback and instantly see which 5-letter words still match.

For each letter of the alphabet you can mark:
- **Excluded** — letter is not in the word (grey tile)
- **In the word but wrong position** — tick the position checkboxes under "exclude position" (yellow tile)
- **In the word at a specific position** — tick the position checkboxes under "include position" (green tile)

The matching words are displayed in the list at the bottom, along with a count.

The toolbar has 4 **memory slots** (radio buttons) so you can track multiple guesses independently and switch between them.

## Keyboard shortcuts

| Key | Action |
|-----|--------|
| Letter key | Toggle that letter on/off |
| `F1`–`F5` then letter | Toggle exclude-position flag for position 1–5 |
| `Shift`+`F1`–`F5` then letter | Toggle include-position flag for position 1–5 |
| `Alt`+`F1`–`F4` | Switch memory slot 1–4 |
| `Escape` | Clear modifier state |
| `Alt`+`Escape` | Full reset |

## Installation

Install to `/opt/scanwords` so it can be launched from the desktop:

```bash
sudo mkdir -p /opt/scanwords
sudo chown $USER /opt/scanwords
cp WordScanner/* /opt/scanwords/
cp WordScanner/scanwords.desktop ~/.local/share/applications/
```

The app will then appear in your application launcher as **ScanWords**.

## Requirements

- Python 3
- tkinter (`sudo apt install python3-tk` on Debian/Ubuntu)

## Running manually

```bash
python3 /opt/scanwords/scanwords.py
```

Logs are written to `/tmp/scanwords.log` when launched via the shell wrapper.
