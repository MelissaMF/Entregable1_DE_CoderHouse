import requests
import os
from dotenv import load_dotenv

load_dotenv()

RapidAPIKey = os.getenv('API_KEY')

url = "https://billboard-api2.p.rapidapi.com/hot-100"

querystring = {"date":"2023-09-01","range":"1-10"}

headers = {
	"X-RapidAPI-Key": RapidAPIKey,
	"X-RapidAPI-Host": "billboard-api2.p.rapidapi.com"
}

response = requests.get(url, headers=headers, params=querystring)

dataAsDictionary = response.json()

print(dataAsDictionary)