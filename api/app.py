"""
FastAPI server for receiving test specs and triggering the agent.
"""

from fastapi import FastAPI, Request
from agent.main_agent import run_agent

app = FastAPI()

@app.post("/generate-tests")
async def generate_tests(request: Request):
    data = await request.json()
    result = run_agent(data)
    return {"status": "success", "report": result}
