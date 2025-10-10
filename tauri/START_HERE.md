# 🚀 START HERE - Dominos Quick Start Guide

Welcome to Dominos! This guide will get you up and running in minutes.

## ⚡ Quick Start (Windows)

The fastest way to get started:

1. **Open Terminal** in the project directory
2. **Run the quick start script:**
   ```bash
   quick-dev.bat
   ```
3. **Done!** The application will open automatically.

## 📋 What You Need

Before starting, make sure you have:

- ✅ **Rust** - [Install from rustup.rs](https://rustup.rs/)
- ✅ **Node.js** - [Install from nodejs.org](https://nodejs.org/)
- ✅ **Visual Studio Build Tools** (Windows only)

## 🎯 First Time Setup

### Step 1: Install Dependencies

```bash
npm install
```

This installs the Tauri CLI and other required packages.

### Step 2: Start Development Server

```bash
npm run dev
```

The application window will open automatically!

## 🎨 What You'll See

When the app opens, you'll see:

1. **Domino Selection** - Choose 1, 2, or 3 dominoes
2. **Blank Dominoes** - Click to reveal your fortune
3. **Reset Button** - Start a new reading
4. **Dark Mode Toggle** - Switch between light/dark themes
5. **Help Button (?)** - Access full documentation

## 🎮 Try These Features

### 1. Draw a Single Domino
- Keep the default "1" selection
- Click the blank domino
- Read your fortune!

### 2. Draw Multiple Dominoes
- Select "2" or "3" from the dropdown
- Click each blank domino one at a time
- Each reveals a unique interpretation

### 3. Start a New Reading
- Click the "Reset" button
- All dominoes return to blank
- Draw again for a new reading

### 4. Toggle Dark Mode
- Click the toggle switch (top-right)
- Smooth transition to dark theme
- Your preference is saved automatically

### 5. Access Help
- Click the "?" button (top-right)
- View comprehensive documentation
- Learn about each domino's meaning

## 📚 Understanding Domino Readings

### The 28 Dominoes

Each domino from 0-0 to 6-6 has a unique meaning:

- **0-0**: Least auspicious - protect your possessions
- **1-1**: Happiness in love and marriage
- **2-2**: Excellent for harmony and success
- **3-3**: Money coming your way
- **4-4**: Time for happiness and laughter
- **5-5**: Success in all things
- **6-6**: Good for speculation and taking chances

### Reading Interpretations

Each domino provides guidance on:
- **Love & Relationships**
- **Money & Finances**
- **Career & Work**
- **Life Decisions**
- **Travel & Changes**
- **Family & Home**

### Multiple Domino Readings

- **1 Domino**: Quick, focused guidance
- **2 Dominoes**: Balanced perspective
- **3 Dominoes**: Comprehensive reading

## ⌨️ Using the Application

### Basic Controls

| Action | How To |
|--------|--------|
| **Select Dominoes** | Use dropdown menu |
| **Draw Domino** | Click blank domino |
| **New Reading** | Click Reset button |
| **Dark Mode** | Click toggle switch |
| **Help** | Click ? button |

### Tips for Best Results

1. **Focus Your Question** - Think about what you want to know
2. **Click Deliberately** - Each domino reveals once
3. **Read Carefully** - Each interpretation is unique
4. **Trust Your Intuition** - The dominoes guide, you decide
5. **Start Fresh** - Use Reset for new questions

## 🛠️ Development Tips

### Making Changes

**Frontend (HTML/CSS/JS):**
- Edit `src/index.html` for the main interface
- Changes reload automatically
- No restart needed!

**Domino Images:**
- Located in `src/` folder
- Named 0-0.png through 6-6.png
- Standard PNG format

**Help Documentation:**
- Edit `src/help.html`
- Supporting files in `src/help_files/`

### Viewing Console
- Right-click in app → "Inspect Element"
- Check Console tab for logs
- Useful for debugging

## 📖 Next Steps

Now that you're running, explore these guides:

1. **README.md** - Project overview
2. **BUILD_INSTRUCTIONS.md** - How to build installers
3. **SETUP.md** - Detailed setup instructions
4. **Help (in app)** - Complete domino meanings

## 🏗️ Building the App

When you're ready to create an installer:

### Quick Build (Windows)
```bash
quick-build.bat
```

### Manual Build
```bash
npm run build
```

Installers will be in: `src-tauri/target/release/bundle/`

## 🐛 Troubleshooting

### App Won't Start?

**Check Rust:**
```bash
rustc --version
```
If not found, install from [rustup.rs](https://rustup.rs/)

**Check Node.js:**
```bash
node --version
```
If not found, install from [nodejs.org](https://nodejs.org/)

**Windows: Missing Build Tools?**
Install [Visual Studio Build Tools](https://visualstudio.microsoft.com/visual-cpp-build-tools/)

### Dominoes Not Showing?

1. Check that all PNG files are in `src/` folder
2. Verify file names: 0-0.png through 6-6.png
3. Check browser console for errors

### Build Errors?

**Clean and Rebuild:**
```bash
cd src-tauri
cargo clean
cd ..
npm install
npm run dev
```

## 💡 Pro Tips

1. **Use Dark Mode** - Easier on the eyes for extended readings
2. **Read All Interpretations** - Even in multi-domino readings
3. **Keep a Journal** - Track your readings and outcomes
4. **Trust the Process** - Domino divination has ancient roots
5. **Have Fun** - It's both guidance and entertainment!

## 🎯 Common Use Cases

### Quick Daily Guidance
1. Select 1 domino
2. Ask your question
3. Click to reveal
4. Reflect on the message

### Relationship Questions
1. Select 2 dominoes
2. Focus on your relationship
3. Draw both dominoes
4. Consider both perspectives

### Major Life Decisions
1. Select 3 dominoes
2. Think about your decision
3. Draw all three
4. Synthesize the guidance

### General Fortune Reading
1. Select 3 dominoes
2. Keep an open mind
3. Draw sequentially
4. Look for patterns

## 📁 Project Structure (Quick Reference)

```
dominos/
├── src/              # Your app's frontend
│   ├── index.html   # Main interface
│   ├── help.html    # Help documentation
│   ├── *.png        # Domino images
│   └── help_files/  # Help assets
├── src-tauri/       # Backend (Rust)
└── Documentation    # All guides
```

## 🚀 Ready to Go!

You're all set! Here's what to do now:

1. ✅ Run `npm run dev`
2. ✅ Draw your first domino
3. ✅ Try different combinations
4. ✅ Explore dark mode
5. ✅ Read the help documentation
6. ✅ Start discovering your fortune!

## 📞 Need Help?

- **Help Button** - Click "?" in the app
- **README.md** - Project overview
- **BUILD_INSTRUCTIONS.md** - Building installers
- **Tauri Docs** - [tauri.app](https://tauri.app/)

## 🔮 About Domino Divination

Domino divination is an ancient practice of fortune telling using dominoes. Each domino combination carries specific meanings and guidance. This digital tool brings this traditional practice to your desktop with:

- All 28 traditional domino combinations
- Authentic interpretations
- Easy-to-use interface
- Modern dark mode option

---

**Happy Fortune Telling! 🎲**

*Dominos - Digital Domino Divination Tool*  
*Discover your fortune through the ancient art of domino reading*
