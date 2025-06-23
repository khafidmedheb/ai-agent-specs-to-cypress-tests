#!/bin/bash

# Fail on error
set -e

echo "🚀 Activating virtual environment..."
source venv/bin/activate

echo "🛰️  Launching FastAPI server in background..."
nohup uvicorn api.app:app --port 8000 &
sleep 5

echo "📡 Sending dummy spec to trigger agent..."
curl -X POST http://localhost:8000/generate-tests      -H "Content-Type: application/json"      -d '{"spec": "Sample test case to trigger Cypress generation"}'

echo "🧪 Running Cypress tests..."
npm run test

echo "📄 Generated test report:"
cat test_report.md

echo "📤 Sending report to mock webhook endpoint..."
curl -X POST https://example.com/webhook      -H "Content-Type: application/json"      -d @test_report.md

echo "✅ Done."
