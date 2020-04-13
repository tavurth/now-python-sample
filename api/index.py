from sanic import Sanic
from sanic.response import json

app = Sanic()

GlobalVar = "This will be cached while the lambda is warm"

@app.route(
    '/<path:path>',
    methods=['GET']
)
async def index(request, path=''):
    print(request)
    print(GlobalVar)
    return json({'hello': path})
