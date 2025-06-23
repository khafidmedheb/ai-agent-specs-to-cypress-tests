# 🤖 Cypress Test Agent with Langchain

[![Build](https://img.shields.io/github/actions/workflow/status/your-repo/main.yml?branch=main)]()
[![License](https://img.shields.io/badge/license-MIT-green.svg)]()

An AI-powered test automation pipeline that reads Jira/Xray specs, generates Cypress tests, runs them, and delivers reports via Markdown/JSON or webhooks.

## 🚀 Features

- Read specs (Jira/Xray format)
- Generate Cypress JS & Gherkin tests
- Run tests via script or GitHub Action
- Generate Markdown/JSON reports
- Webhook to send reports to Slack/Notion

## 🧱 Project Structure

```
agent/
├── main_agent.py
├── tools/
│   ├── test_generator.py
│   └── reporter.py
api/
├── app.py
cypress/
├── integration/
├── support/
scripts/
└── run_tests.sh
```

## 🛠 Installation

```bash
python -m venv venv && source venv/bin/activate
pip install -r requirements.txt
npm install
```

## ▶️ Usage

```bash
uvicorn api.app:app --reload
curl -X POST http://localhost:8000/generate-tests -d '{...}'
```

## ✅ Run Tests

```bash
bash scripts/run_tests.sh
```

---
MIT License © 2025
