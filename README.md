# Codegment

A lightweight, modern desktop code editor featuring syntax highlighting, multi-file tab management, and intelligent suggestions, built with Python, Kivy, and Pygments.

[![PyPI Version](https://img.shields.io/pypi/v/codegment)](https://pypi.org/project/codegment/)
[![PyPI Total Downloads](https://img.shields.io/pepy/dt/codegment?label=total%20downloads)](https://pepy.tech/project/codegment)
[![PyPI Monthly Downloads](https://img.shields.io/pypi/dm/codegment)](https://pypi.org/project/codegment/)
[![Python Versions](https://img.shields.io/pypi/pyversions/codegment)](https://pypi.org/project/codegment/)
[![License](https://img.shields.io/github/license/ndenissov/Codegment)](https://github.com/ndenissov/Codegment/blob/main/LICENSE)

---

## Overview

Codegment provides a clean, responsive development environment designed for programmers who need a fast, extensible code editor with visual elegance. Leveraging the rendering performance of Kivy, Material Design components from KivyMD, and the tokenization capabilities of Pygments, Codegment delivers an agile editing workflow with cross-platform desktop support.

## Core Capabilities

- Syntax Highlighting: Comprehensive token highlighting powered by Pygments, supporting dozens of programming languages and color schemes, including built-in support for Kivy language (.kv) files.
- Code Completion: Contextual word suggestions and auto-completion dialogs for rapid coding.
- Search and Replace: In-editor search functionality with navigation across occurrences and direct replacement tools.
- Multi-Tab Editing: Open, edit, and switch between multiple documents simultaneously.
- Dynamic Typography: In-place font scaling to adjust editor text dimensions seamlessly.
- Configuration Persistence: User preferences and editor settings are stored in an INI configuration file.
- Real-Time Coordinates: Bottom status bar tracks cursor row and column positions alongside the active lexer.

## Installation

### Via PyPI (Recommended)

Install the latest release using pip:

```bash
pip install codegment
```

Or with Poetry:

```bash
poetry add codegment
```

### From Source

Clone the repository and install dependencies:

```bash
git clone https://github.com/ndenissov/Codegment.git
cd Codegment
poetry install
```

## Quick Start

Launch Codegment directly from your terminal:

```bash
codegment
```

Alternatively, run the module through Python:

```bash
python -m codegment
```

## Editor Shortcuts

| Shortcut | Action |
| --- | --- |
| `Ctrl + N` | Create a new document |
| `Ctrl + O` | Open file selector dialog |
| `Ctrl + S` | Save current file |
| `Ctrl + W` | Close active tab |
| `Ctrl + F` | Open search dialog |
| `F3` | Next search match |
| `Shift + F3` | Previous search match |
| `Ctrl + F3` | Replace current match |
| `Ctrl + =` | Increase font size |
| `Ctrl + -` | Decrease font size |
| `Ctrl + Space` | Trigger completion suggestions |
| `Tab` / `Shift + Tab` | Cycle forward / backward through suggestions |
| `Escape` | Dismiss suggestion list |

## Architecture and Dependencies

Codegment is built upon the following technologies:
- Python 3.10+
- Kivy: Hardware-accelerated UI framework
- KivyMD: Material Design UI component library
- Pygments: Syntax highlighting engine

## Author

Nikita Denissov ([@ndenissov](https://github.com/ndenissov))

## License

This project is licensed under the GNU Lesser General Public License v2.1 or later. See the [LICENSE](https://github.com/ndenissov/Codegment/blob/main/LICENSE) file for details.
