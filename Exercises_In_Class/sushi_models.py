import requests
from requests.exceptions import ConnectionError

url = "http://sushi.it.ilstu.edu:8080/api/models"
headers = {"Authorization": "Bearer sk-e1c6cbd1425a4e66b56f9e0efe5e7bbe"}

try:
    response = requests.get(url, headers=headers)
    response.raise_for_status()
    print(response.json())

except ConnectionError:
    print("❌ Connection Error: Are you connected to the ISU VPN or isunet?")
except Exception as e:
    print(f"An unexpected error occurred: {e}")
