# Dominos - Digital Domino Divination Tool

A desktop application for domino divination and fortune telling. Draw 1-3 dominoes to receive detailed interpretations about love, money, career, and life guidance.

## Features

- **Interactive Domino Drawing**: Click to reveal random dominoes
- **Multiple Domino Readings**: Choose to draw 1, 2, or 3 dominoes
- **Detailed Interpretations**: Each domino provides specific guidance
- **Dark Mode**: Toggle between light and dark themes
- **Persistent Settings**: Your preferences are saved automatically
- **Help Documentation**: Comprehensive guide included

## Quick Start

### Prerequisites

- **Rust** - [Install from rustup.rs](https://rustup.rs/)
- **Node.js** - [Install from nodejs.org](https://nodejs.org/)
- **Visual Studio Build Tools** (Windows only)

### Development

Run the quick start script:
```bash
quick-dev.bat
```

Or manually:
```bash
npm install
npm run dev
```

### Building

Create an installer:
```bash
quick-build.bat
```

Or manually:
```bash
npm run build
```

Installers will be in: `src-tauri/target/release/bundle/`

## How to Use

1. **Select Number of Dominoes**: Choose 1, 2, or 3 dominoes from the dropdown
2. **Click Dominoes**: Click each blank domino to reveal your reading
3. **Read Interpretations**: Each domino provides specific guidance
4. **Reset**: Click the Reset button to start a new reading
5. **Dark Mode**: Toggle the switch in the top-right corner
6. **Help**: Click the "?" button for detailed documentation

## Domino Meanings

Each domino (0-0 through 6-6) has a unique meaning related to:
- Love and relationships
- Money and finances
- Career and work
- Life decisions and guidance
- Travel and changes
- Family and home

## Project Structure

```
dominos/
├── src/                    # Frontend files
│   ├── index.html         # Main application
│   ├── help.html          # Help documentation
│   ├── *.png              # Domino images (0-0 through 6-6)
│   ├── favicon.ico        # Application icon
│   └── help_files/        # Help documentation assets
├── src-tauri/             # Tauri backend
│   ├── src/
│   │   ├── main.rs        # Rust entry point
│   │   └── lib.rs         # Library file
│   ├── Cargo.toml         # Rust dependencies
│   ├── tauri.conf.json    # Tauri configuration
│   └── build.rs           # Build script
├── package.json           # Node.js dependencies
├── quick-dev.bat          # Quick development start
├── quick-build.bat        # Quick build script
└── README.md              # This file
```

## Technology Stack

- **Frontend**: HTML, CSS, JavaScript
- **Backend**: Rust with Tauri 2.0
- **Build System**: Node.js, npm, Cargo

## Features in Detail

### Domino Selection
- Choose between 1, 2, or 3 dominoes for your reading
- Each domino is randomly selected from the full set
- Cannot click the same domino twice in one reading

### Interpretations
- 28 unique domino combinations (0-0 through 6-6)
- Color-coded domino numbers for easy identification
- Detailed guidance for each combination
- Interpretations cover multiple life areas

### Dark Mode
- Smooth transition between light and dark themes
- Preference saved automatically
- Easy toggle switch in the interface

### Help System
- Comprehensive documentation
- Visual guides with screenshots
- Domino meaning reference
- Usage instructions

## Development

### Making Changes

**Frontend (HTML/CSS/JS):**
- Edit files in `src/` folder
- Changes reload automatically in dev mode

**Backend (Rust):**
- Edit files in `src-tauri/src/`
- Restart dev server to see changes

### Building for Production

The build process creates installers for:
- Windows: MSI and NSIS installers
- Linux: DEB and RPM packages
- macOS: DMG and APP bundles

## Troubleshooting

### Application Won't Start

1. Verify Rust is installed: `rustc --version`
2. Verify Node.js is installed: `node --version`
3. Install dependencies: `npm install`
4. Try cleaning: `cd src-tauri && cargo clean && cd ..`

### Build Errors

1. Ensure all prerequisites are installed
2. Update Rust: `rustup update`
3. Clear node_modules: `rm -rf node_modules && npm install`
4. Clear Cargo cache: `cd src-tauri && cargo clean`

## License

MIT License - Copyright © 2025 Radius.Center

## Credits

- **Developer**: Radius.Center
- **Framework**: Tauri 2.0
- **Divination System**: Traditional domino fortune telling

## Support

For issues or questions:
1. Check the help documentation (click "?" in the app)
2. Review the troubleshooting section above
3. Consult the Tauri documentation at [tauri.app](https://tauri.app/)

---

**Dominos - Digital Domino Divination Tool**  
*Discover your fortune through the ancient art of domino reading*
