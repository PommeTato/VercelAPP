import re
from datetime import datetime

from flask import Flask

app = Flask(__name__)


@app.route("/")
def home():
    return "Hello, Flask!"


@app.route("/haibo")
def haibo():
    return "Hello, Haibo"


@app.route("/hello/<name>")
def hello_there(name):
    now = datetime.now()
    formatted_now = now.strftime("%A, %d %B, %Y at %X")

    # Filter the name argument to letters only using regular expressions. URL arguments
    # can contain arbitrary text, so we restrict to safe characters only.
    match_object = re.match("[a-zA-Z]+", name)

    if match_object:
        clean_name = match_object.group(0)
    else:
        clean_name = "Friend"

    content = "Hello there, " + clean_name + "! ,<p>It's " + formatted_now + "</p>"

    jacobArticleURL = "https://docs.google.com/document/d/1Vp-_rAkHijpT45SVuNaXLwTEdiDXFqgiYXu1wZ0tT1Y/edit?usp=sharing"
    article = "<a href=" + jacobArticleURL + "> Jacob's Essay </a><p></p>"

    imgURL = "https://static.s123-cdn.com/uploads/3976349/800_crop_5f2a25436c6e0_5f2a2525255b9.jpg"
    image = "<img alt='Trail' src=" + imgURL + " width=600 height=300></img>"

    content = content + article + image

    return content


@app.route("/about")
def about():
    return "About Page Route"


@app.route("/portfolio")
def portfolio():
    a = 0 - 9
    return "Portfolio Page Route"


@app.route("/contact")
def contact():
    return "Contact Page Route"


@app.route("/api")
def api():
    with open("data.json", mode="r") as my_file:
        text = my_file.read()
        return text


if __name__ == "__main__":
    app.run(debug=True)
