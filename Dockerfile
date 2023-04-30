FROM python:3
ADD requirements.txt /app/requirements.txt
ADD src /app
WORKDIR /app
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD ["gunicorn", "main:app", "--worker-class", "uvicorn.workers.UvicornWorker", "--bind", "0.0.0.0:8888"]