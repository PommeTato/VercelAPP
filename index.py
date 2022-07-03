from flask import flask

app = flask(__name__)

@app.route("/home")
def home():
    return "Hello Agent"
    
if __name__== "__main__":
    app.run()

@app.route("/jacob")
def name():
    return "Hello, Jacob!"
