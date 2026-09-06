import requests

r = requests.get("https://agentalog.com/api/listings", params={"q": "playwright", "sort": "stars", "limit": 3}, timeout=30).json()
print(sorted(r.keys()))
