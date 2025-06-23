#!/bin/bash

# Fail on error
set -e

echo "🔧 Creating Python virtual environment..."
python3 -m venv venv

echo "✅ Virtual environment created."

echo "🚀 Activating virtual environment..."
source venv/bin/activate

echo "📦 Installing Python dependencies..."
pip install --upgrade pip
pip install -r requirements.txt

echo "🧩 Installing Node.js dependencies..."
npm install

echo "✅ Setup complete. You can now run the API server with: source venv/bin/activate && uvicorn api.app:app --reload"
