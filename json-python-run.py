import requests
import json

with open("kakao_code.json","r") as fp:
    tokens = json.load(fp)

print(tokens["access_token"])

url="https://kapi.kakao.com/v2/api/talk/memo/default/send"

headers={
    "Authorization" : "Bearer " + tokens["access_token"]
}

print(tokens)

data={
    "template_object": json.dumps({
       "object_type": "text",
        "text": "Git Pull Request 가 있습니다",
        "link": {
            "web_url": "https://github.com",
            "mobile_web_url": "https://github.com"
        },
        "button_title": "Go to Github"
    })
}

response = requests.post(url, headers=headers, data=data)
response.status_code

print(response.status_code)
print(response.text)
