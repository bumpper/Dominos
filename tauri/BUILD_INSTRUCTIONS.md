# 🏗️ Build Instructions - Dominos

Complete guide for building the Dominos desktop application.

## 📋 Prerequisites

Before building, ensure you have:

### Required Software

1. **Rust** (latest stable)
   - Install: https://rustup.rs/
   - Verify: `rustc --version`

2. **Node.js** (v16 or later)
   - Install: https://nodejs.org/
   - Verify: `node --version`

3. **npm** (comes with Node.js)
   - Verify: `npm --version`

### Platform-Specific Requirements

**Windows:**
- Visual Studio Build Tools 2019 or later
- Windows 10 SDK
- Download: https://visualstudio.microsoft.com/visual-cpp-build-tools/

**Linux:**
```bash
sudo apt update
sudo apt install libwebkit2gtk-4.0-dev \
    build-essential \
    curl \
    wget \
    libssl-dev \
    libgtk-3-dev \
    libayatana-appindicator3-dev \
    librsvg2-dev
```

**macOS:**
- Xcode Command Line Tools
- Install: `xcode-select --install`

## 🚀 Quick Build

### Windows Quick Build

```bash
quick-build.bat
```

This script will:
1. Install dependencies
2. Build the application
3. Show installer locations

### Manual Build Process

```bash
# 1. Install dependencies
npm install

# 2. Build the application
npm run build
```

## 📦 Build Outputs

### Windows

Installers are created in: `src-tauri/target/release/bundle/`

**MSI Installer:**
- Location: `src-tauri/target/release/bundle/msi/`
- File: `Dominos_1.0.0_x64_en-US.msi`
- Best for: Enterprise deployment, system-wide installation

**NSIS Installer:**
- Location: `src-tauri/target/release/bundle/nsis/`
- File: `Dominos_1.0.0_x64-setup.exe`
- Best for: User-friendly installation, per-user install

### Linux

**DEB Package:**
- Location: `src-tauri/target/release/bundle/deb/`
- File: `dominos_1.0.0_amd64.deb`
- For: Debian, Ubuntu, Linux Mint

**RPM Package:**
- Location: `src-tauri/target/release/bundle/rpm/`
- File: `dominos-1.0.0-1.x86_64.rpm`
- For: Fedora, RHEL, CentOS

### macOS

**DMG Image:**
- Location: `src-tauri/target/release/bundle/dmg/`
- File: `Dominos_1.0.0_x64.dmg`
- Standard macOS installer

**APP Bundle:**
- Location: `src-tauri/target/release/bundle/macos/`
- File: `Dominos.app`
- Standalone application

## 🎯 Build Targets

### Build for Specific Platform

**Windows:**
```bash
npm run build:windows
```

**Linux:**
```bash
npm run build:linux
```

**macOS:**
```bash
npm run build:macos
```

### Cross-Platform Builds

Note: Cross-compilation has limitations. Best practice is to build on the target platform.

## 🔧 Build Configuration

### Version Number

Edit `src-tauri/Cargo.toml`:
```toml
[package]
version = "1.0.0"
```

And `src-tauri/tauri.conf.json`:
```json
{
  "version": "1.0.0"
}
```

### Application Name

Edit `src-tauri/tauri.conf.json`:
```json
{
  "productName": "Dominos"
}
```

### Window Settings

Edit `src-tauri/tauri.conf.json`:
```json
{
  "app": {
    "windows": [{
      "title": "Dominos - Fortune Telling",
      "width": 900,
      "height": 800,
      "resizable": true
    }]
  }
}
```

### Bundle Settings

Edit `src-tauri/tauri.conf.json`:
```json
{
  "bundle": {
    "identifier": "center.radius.dominos",
    "icon": ["icons/..."],
    "category": "Utility"
  }
}
```

## 🎨 Custom Icons

### Icon Requirements

Place icons in `src-tauri/icons/`:

- `32x32.png` - 32x32 pixels
- `128x128.png` - 128x128 pixels
- `128x128@2x.png` - 256x256 pixels
- `icon.icns` - macOS icon
- `icon.ico` - Windows icon

### Creating Icons

**From PNG:**
```bash
# Using ImageMagick
convert source.png -resize 32x32 32x32.png
convert source.png -resize 128x128 128x128.png
convert source.png -resize 256x256 128x128@2x.png
```

**Online Tools:**
- https://favicon.io/
- https://icoconvert.com/
- https://cloudconvert.com/

## 🐛 Troubleshooting

### Build Fails

**Clear Cache:**
```bash
cd src-tauri
cargo clean
cd ..
rm -rf node_modules
npm install
npm run build
```

**Update Rust:**
```bash
rustup update
```

**Check Dependencies:**
```bash
npm audit
npm audit fix
```

### Windows-Specific Issues

**Missing Build Tools:**
- Install Visual Studio Build Tools
- Ensure Windows SDK is installed
- Restart terminal after installation

**WebView2 Error:**
- WebView2 is required for Tauri apps
- Usually pre-installed on Windows 10/11
- Download: https://developer.microsoft.com/microsoft-edge/webview2/

### Linux-Specific Issues

**Missing Libraries:**
```bash
# Ubuntu/Debian
sudo apt install libwebkit2gtk-4.0-dev

# Fedora
sudo dnf install webkit2gtk3-devel
```

### macOS-Specific Issues

**Code Signing:**
- For distribution, you need an Apple Developer account
- For local use, unsigned builds work fine

**Gatekeeper:**
```bash
# Allow unsigned app to run
xattr -cr Dominos.app
```

## 📊 Build Optimization

### Release Build (Optimized)

Default build is already optimized. Settings in `Cargo.toml`:

```toml
[profile.release]
panic = "abort"
codegen-units = 1
lto = true
opt-level = "s"
strip = true
```

### Debug Build (Faster Compilation)

```bash
npm run dev
```

This builds in debug mode with faster compilation but larger size.

## 📝 Build Checklist

Before building for distribution:

- [ ] Update version numbers
- [ ] Test all features
- [ ] Update documentation
- [ ] Create custom icons
- [ ] Test on target platform
- [ ] Verify all assets are included
- [ ] Check file permissions
- [ ] Test installer
- [ ] Verify uninstaller works
- [ ] Document known issues

## 🚢 Distribution

### Windows

**MSI Installer:**
- Professional appearance
- System-wide installation
- Requires admin rights
- Best for enterprise

**NSIS Installer:**
- User-friendly
- Per-user installation
- No admin required
- Best for general users

### Linux

**DEB Package:**
```bash
sudo dpkg -i dominos_1.0.0_amd64.deb
```

**RPM Package:**
```bash
sudo rpm -i dominos-1.0.0-1.x86_64.rpm
```

### macOS

**DMG Distribution:**
1. Open DMG
2. Drag app to Applications
3. Launch from Applications folder

## 🔐 Code Signing

### Windows

Requires a code signing certificate:
```bash
# Sign the installer
signtool sign /f certificate.pfx /p password installer.exe
```

### macOS

Requires Apple Developer account:
```bash
# Sign the app
codesign --deep --force --verify --verbose --sign "Developer ID" Dominos.app
```

## 📈 Build Size

Typical build sizes:

- **Windows MSI**: ~15-20 MB
- **Windows NSIS**: ~15-20 MB
- **Linux DEB**: ~15-20 MB
- **Linux RPM**: ~15-20 MB
- **macOS DMG**: ~20-25 MB

## 🎯 Next Steps

After building:

1. **Test the Installer**
   - Install on clean system
   - Verify all features work
   - Test uninstallation

2. **Create Release Notes**
   - Document new features
   - List bug fixes
   - Note known issues

3. **Distribute**
   - Upload to website
   - Share with users
   - Gather feedback

## 📞 Support

For build issues:

- Check Tauri docs: https://tauri.app/
- Review error messages carefully
- Ensure all prerequisites are installed
- Try building on a clean system

---

**Happy Building! 🎉**

*Dominos - Digital Domino Divination Tool*
