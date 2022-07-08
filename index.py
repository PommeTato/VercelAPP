
from flask import Flask

app = Flask(__name__)

@app.route("/home")
def home():
    return "Hello Agent"
@app.route("/jacob")
def name():
    return "Hello, Jacob!"

if __name__== "__main__":
    app.run(host='0.0.0.0',port=8080, debug=True)
