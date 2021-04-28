import requests

url = "https://api.justyy.workers.dev/api/fortune/"


def hello_word():
    resp = requests.get(url=url)
    # Returns a json encoded string.
    fortune = resp.json()
    return fortune


if __name__ == '__main__':
    print(hello_word())
