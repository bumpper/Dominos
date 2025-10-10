# Dominos Application Icons

This directory contains the application icons for the Dominos desktop application.

## Required Icons

The following icon files are needed for the application:

- `32x32.png` - 32x32 pixel icon
- `128x128.png` - 128x128 pixel icon
- `128x128@2x.png` - 256x256 pixel icon (2x resolution)
- `icon.icns` - macOS icon file
- `icon.ico` - Windows icon file

## Creating Icons

You can create custom icons using:

1. **Online Tools:**
   - [favicon.io](https://favicon.io/) - Generate from text or image
   - [icoconvert.com](https://icoconvert.com/) - Convert images to ICO
   - [cloudconvert.com](https://cloudconvert.com/) - Convert to ICNS

2. **Desktop Tools:**
   - GIMP (free, cross-platform)
   - Photoshop
   - Inkscape (for vector graphics)

3. **Command Line:**
   ```bash
   # Using ImageMagick
   convert source.png -resize 32x32 32x32.png
   convert source.png -resize 128x128 128x128.png
   convert source.png -resize 256x256 128x128@2x.png
   ```

## Icon Guidelines

- Use a simple, recognizable design
- Ensure good contrast for visibility
- Test at different sizes
- Consider both light and dark backgrounds
- Use domino imagery for brand recognition

## Temporary Icons

For development, Tauri will use default icons if custom ones are not provided. Replace these with your custom icons before building for production.

## Recommended Design

For the Dominos application, consider:
- A domino tile design
- The numbers 0-6 in a pattern
- A fortune-telling theme
- Colors that match the application theme
