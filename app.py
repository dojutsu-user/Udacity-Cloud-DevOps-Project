"""
A hello world app in Flask.
"""

from flask import Flask

app = Flask(__name__)  # pylint: disable=invalid-name

@app.route('/')
def index():
    """Home page for the app."""
    return 'Hello World!'

app.run(host='0.0.0.0', port=5000)
