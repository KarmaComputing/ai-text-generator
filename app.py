from transformers import pipeline
from flask import Flask, request


app = Flask(__name__)

generator = pipeline("text-generation", model="EleutherAI/gpt-neo-2.7B")


@app.route("/")
def hello_world():
    resp = """<p>Post to /generate for generated text.
            e.g. curl -d prompt='What is the meaning of life?' http://127.0.0.1:5000/generate
            </p>
            """
    return resp


@app.route("/generate", methods=["POST"])
def generate():
    prompt = request.form.get("prompt", None)
    max_length = request.form.get("max_length", 50)
    res = generator(prompt, max_length=max_length, do_sample=True, temperature=0.9)
    return res[0]['generated_text']
