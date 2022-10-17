from flask import Flask

app = Flask(__name__)
@app.route('/')
def index():
    return "Hello - Welcome to TechCuriosity - This is a Flask App Demo"
    
app.run(host="0.0.0.0", port=5555)
