# main.py
from fastapi import FastAPI


app = FastAPI()

@app.get("/hello")
def hello():
    return {"msg": "Hello from Docker!"}
