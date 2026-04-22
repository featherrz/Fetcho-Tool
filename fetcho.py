#!/usr/bin/env python                                                      
import requests
domainerr = 416
foundsuces = 202
notfounderr = 404
print("Fetcho Internet Tool — Version: v1.0")
print("Enter Link")
link = input(">>> https://")
if "." not in link:
    print("Hey that's not a vaild Domain.")
    pribt(f"Error Code: {domainerr}")
    exit()
else:
    pass
  
try:
    response = requests.get(f"https://{link}")
    if response.status_code == 200:
        print(f"Found WebPage for https://{link}")
        print(f"Success Code: {foundsuces}")
        print(response.text)                                                                                                                                             
    else:
        print("[ERROR]: Invaild Link or No internet connected")
        print(f"Error Code: {notfounderr}")
except:
    print("[ERROR]: Invaild Link or No internet connected")
    print(f"Error Code: {notfounderr}")
