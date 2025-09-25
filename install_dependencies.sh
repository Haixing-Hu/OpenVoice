#!/bin/bash

# OpenVoice V2 Dependencies Installation Script
# This script will automatically install all necessary dependencies, including MeloTTS

echo "🚀 Starting OpenVoice V2 dependencies installation..."

# Check if running in virtual environment
if [[ "$VIRTUAL_ENV" == "" ]]; then
    echo "⚠️  Warning: No virtual environment detected, it's recommended to create and activate one first"
    echo "   Create virtual environment: python -m venv .openvoice-env"
    echo "   Activate virtual environment: source .openvoice-env/bin/activate"
    read -p "Continue with installation? (y/N): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        exit 1
    fi
fi

# Check operating system
if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "🍎 Detected macOS system"

    # Check if Homebrew is installed
    if ! command -v brew &> /dev/null; then
        echo "❌ Homebrew not found, please install Homebrew first"
        echo "   Installation command: /bin/bash -c \"\$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)\""
        exit 1
    fi

    # Install MeCab
    echo "📦 Installing MeCab and mecab-ipadic..."
    brew install mecab mecab-ipadic
else
    echo "🐧 Detected Linux system"
    echo "Please manually install MeCab:"
    echo "  Ubuntu/Debian: sudo apt-get install mecab mecab-ipadic-utf8"
    echo "  CentOS/RHEL: sudo yum install mecab mecab-ipadic"
fi

# Install Python dependencies
echo "🐍 Installing Python dependencies..."

# Install all dependencies from requirements.txt (includes improved MeloTTS fork)
echo "📦 Installing all dependencies including improved MeloTTS fork..."
pip install -r requirements.txt

# Install project in development mode
echo "📦 Installing project in development mode..."
pip install -e .

# Install unidic data package
echo "📦 Downloading unidic data package..."
python -m unidic download

echo "✅ All dependencies installation completed!"
echo ""
echo "🎉 You can now use OpenVoice V2!"
echo "   Check demo_part3.ipynb for usage instructions"
echo ""
echo "📝 Notes:"
echo "   - Make sure to download and extract checkpoints_v2 to project root directory"
echo "   - Supported languages: English, Spanish, French, Chinese, Japanese, Korean"
