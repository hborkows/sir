import sys
import requests
import json
import time

host = "http://sirprojekt4.hub.ubeac.io/httpsps30"
sensor_id = "sps30-hb"

if __name__ == '__main__':
    while True:
        line = sys.stdin.readline()
        #print(f'''line: {line}''')
        event = json.loads(line)
        for k, v in event.items():
            payload = {
                    'id': sensor_id,
                    'sensors': [{'id': k, 'data': v}]
                    }
            print(f'''sending: {payload}''')
            r = requests.post(host, json=payload)
            print(f'''response: {r.status_code}''')
            time.sleep(1)

