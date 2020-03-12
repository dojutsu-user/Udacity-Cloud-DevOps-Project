"""
A hello world app in Flask.
"""

from flask import Flask, render_template

app = Flask(__name__, static_url_path='')  # pylint: disable=invalid-name


@app.route('/')
def index():
    """Home page for the app."""
    return render_template('hello.html')


app.run(host='localhost', port=5000)
