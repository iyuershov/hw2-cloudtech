from fastapi import FastAPI


app = FastAPI(
    title='Test API',
    version='0.0.1'
)


@app.get('/')
async def hello():
    return {'message': 'Hello World'}
