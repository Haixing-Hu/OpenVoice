# OpenVoice V2 Installation Guide

This guide will help you install OpenVoice V2 and all its dependencies, including MeloTTS.

## System Requirements

- Python 3.9+
- macOS or Linux system
- At least 8GB of available disk space (for downloading models and data packages)

## Quick Installation

### Method 1: Using Automatic Installation Script (Recommended)

1. **Create and activate virtual environment**:
   ```bash
   python -m venv .openvoice-env
   source .openvoice-env/bin/activate  # macOS/Linux
   ```

2. **Run automatic installation script**:
   ```bash
   ./install_dependencies.sh
   ```

### Method 2: Manual Installation

1. **Create and activate virtual environment**:
   ```bash
   python -m venv .openvoice-env
   source .openvoice-env/bin/activate  # macOS/Linux
   ```

2. **Install system dependencies**:

   **macOS**:
   ```bash
   brew install mecab mecab-ipadic
   ```

   **Ubuntu/Debian**:
   ```bash
   sudo apt-get install mecab mecab-ipadic-utf8
   ```

   **CentOS/RHEL**:
   ```bash
   sudo yum install mecab mecab-ipadic
   ```

3. **Install Python dependencies**:
   ```bash
   # Install all dependencies (includes improved MeloTTS fork with Python 3.13+ compatibility)
   pip install -r requirements.txt

   # Install project in development mode
   pip install -e .

   # Download unidic data package
   python -m unidic download
   ```

## Download Model Files

1. **Download OpenVoice V2 models**:
   - Download `checkpoints_v2.zip` from [official releases](https://github.com/myshell-ai/OpenVoice/releases)
   - Extract to the `checkpoints_v2` folder in the project root directory

2. **Verify file structure**:
   ```
   OpenVoice/
   ├── checkpoints_v2/
   │   ├── base_speakers/
   │   │   ├── en-us.pth
   │   │   ├── zh.pth
   │   │   └── ...
   │   └── converter/
   │       ├── checkpoint.pth
   │       └── config.json
   └── ...
   ```

## Verify Installation

Run the following commands to verify successful installation:

```python
import openvoice
import melo
print("✅ OpenVoice V2 installation successful!")
```

## Usage

Check `demo_part3.ipynb` to learn how to use OpenVoice V2.

Supported languages:
- 🇺🇸 English
- 🇪🇸 Spanish
- 🇫🇷 French
- 🇨🇳 Chinese
- 🇯🇵 Japanese
- 🇰🇷 Korean

## Frequently Asked Questions

### Q: Encounter `num2words` error when installing MeloTTS
**A**: This project uses an improved fork of MeloTTS with better dependency compatibility. The installation should work automatically with `pip install -e .`. If you still encounter issues, try:
```bash
pip install -i https://pypi.org/simple/ num2words
```

### Q: Encounter MeCab-related errors during installation
**A**: Ensure MeCab system dependencies are installed:
- macOS: `brew install mecab mecab-ipadic`
- Ubuntu: `sudo apt-get install mecab mecab-ipadic-utf8`

### Q: unidic download fails
**A**: Ensure stable network connection. The unidic data package is approximately 526MB and may take some time to download.

### Q: Insufficient memory
**A**: Ensure your system has sufficient available memory (recommended 8GB+) and disk space.

## Troubleshooting

If you encounter issues, please check:

1. **Python version**: Ensure you're using Python 3.9+
2. **Virtual environment**: Ensure you're in the correct virtual environment
3. **Network connection**: Ensure you can access PyPI and download servers
4. **System dependencies**: Ensure MeCab is installed

## Update Dependencies

If you need to update dependencies:

```bash
# Activate virtual environment
source .openvoice-env/bin/activate

# Update project dependencies
pip install -e . --upgrade
```

## Uninstall

If you need to uninstall:

```bash
# Activate virtual environment
source .openvoice-env/bin/activate

# Uninstall project
pip uninstall MyShell-OpenVoice

# Remove virtual environment
rm -rf .openvoice-env
```

---

🎉 **Installation complete!** You can now start using OpenVoice V2!
