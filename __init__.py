#!/usr/bin/env python3
import sys
import importlib

try:
    api_name = sys.argv[1]

except IndexError:
    print("./dev.sh API_NAME")
    print("")
    print("    Example:")
    print("      ./dev.sh my-cool-api")
    exit(1)

if __name__ == "__main__":
    new_message = importlib.import_module("api." + api_name)
    new_message.app.run(host="0.0.0.0", port=3000)
