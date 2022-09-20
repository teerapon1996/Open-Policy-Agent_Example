import requests
import json
url = 'http://localhost:8181/v1/data/app/rbac'
myobj = {"input": {
    "action": "read",
    "resource": "Activity",
    "user": "data_e1"
    
}}

x = requests.post(url,data=json.dumps(myobj))

print(x.text)