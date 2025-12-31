from flask import Flask, jsonify
import requests
import os

app = Flask(__name__)

TMDB_API_KEY = os.getenv("TMDB_API_KEY")

@app.route("/api/movies")
def movies():
    url = f"https://api.themoviedb.org/3/movie/popular?api_key={TMDB_API_KEY}"
    return jsonify(requests.get(url).json())

app.run(host="0.0.0.0", port=5000)

